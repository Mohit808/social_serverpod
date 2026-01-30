import 'dart:math';
import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class MapEndpoint extends Endpoint {

  static const int maxMarkersPerCluster = 10;
  static const int defaultPageSize = 10;
  static const double earthLatMeter = 111000.0;

  /// Get map data with clustering based on zoom level
  Future<Map<String, dynamic>> getMapData(
      Session session, {
        required String min_lat,
        required String max_lat,
        required String min_lng,
        required String max_lng,
        String? zoom,
        String? page,
        String? pageSize,
        String? tags,
      }) async {
    // Parse numeric parameters
    final minLat = double.tryParse(min_lat) ?? 0.0;
    final maxLat = double.tryParse(max_lat) ?? 0.0;
    final minLng = double.tryParse(min_lng) ?? 0.0;
    final maxLng = double.tryParse(max_lng) ?? 0.0;
    final zoomLevel = int.tryParse(zoom ?? '10') ?? 10;
    final pageNumber = int.tryParse(page ?? '1') ?? 1;
    final pageSizeValue = int.tryParse(pageSize ?? '$defaultPageSize') ?? defaultPageSize;

    // Parse tags
    List<String> tagNames = [];
    if (tags != null && tags.isNotEmpty) {
      tagNames = tags
          .split(',')
          .map((t) => t.trim())
          .where((t) => t.isNotEmpty)
          .toList();
    }

    // Query posts within bounds
    List<Post> posts;

    if (tagNames.isEmpty) {
      posts = await Post.db.find(
        session,
        where: (t) =>
        t.latitude.notEquals(null) &
        t.longitude.notEquals(null) &
        t.isDeleted.equals(false) &
        t.isArchived.equals(false),
      );
    } else {
      // Get posts with specific tags
      final postTags = await PostTag.db.find(
        session,
        where: (t) => t.tagName.inSet(tagNames.toSet()),
      );
      final postIds = postTags.map((pt) => pt.postId).toSet();

      posts = await Post.db.find(
        session,
        where: (t) =>
        t.id.inSet(postIds) &
        t.latitude.notEquals(null) &
        t.longitude.notEquals(null) &
        t.isDeleted.equals(false) &
        t.isArchived.equals(false),
      );
    }

    // Filter posts by bounds in Dart
    posts = posts.where((post) {
      if (post.latitude == null || post.longitude == null) return false;
      return post.latitude! >= minLat &&
          post.latitude! <= maxLat &&
          post.longitude! >= minLng &&
          post.longitude! <= maxLng;
    }).toList();

    if (zoomLevel >= 15) {
      final markersJson = posts.map((post) => post.toJson()).toList();

      return {
        'message': 'Map markers fetched successfully',
        'status': 200,
        'data': {
          'type': 'markers',
          'zoom': zoomLevel,
          'count': posts.length,
          'markers': markersJson,
        },
      };
    }

    // Get radius based on zoom
    final radius = _getRadiusByZoom(zoomLevel);

    // Build clusters
    final clusters = <String, Map<String, dynamic>>{};

    for (var post in posts) {
      if (post.latitude == null || post.longitude == null) continue;

      final key = _gridKey(post.latitude!, post.longitude!, radius);

      if (!clusters.containsKey(key)) {
        clusters[key] = {
          'lat_sum': 0.0,
          'lng_sum': 0.0,
          'count': 0,
          'posts': <Post>[],
        };
      }

      final cluster = clusters[key]!;

      if ((cluster['posts'] as List<Post>).length < maxMarkersPerCluster) {
        (cluster['posts'] as List<Post>).add(post);
      }

      cluster['lat_sum'] = (cluster['lat_sum'] as double) + post.latitude!;
      cluster['lng_sum'] = (cluster['lng_sum'] as double) + post.longitude!;
      cluster['count'] = (cluster['count'] as int) + 1;
    }

    // Sort clusters by density (descending)
    final sortedClusters = clusters.values.toList()
      ..sort((a, b) => (b['count'] as int).compareTo(a['count'] as int));

    // Pagination
    final totalClusters = sortedClusters.length;
    final totalPages = (totalClusters / pageSizeValue).ceil();
    final startIndex = (pageNumber - 1) * pageSizeValue;
    final endIndex = min(startIndex + pageSizeValue, totalClusters);

    final paginatedClusters = sortedClusters.sublist(
      startIndex,
      endIndex,
    );

    // Build response clusters
    final responseClusters = <Map<String, dynamic>>[];

    for (var cluster in paginatedClusters) {
      final count = cluster['count'] as int;
      final latSum = cluster['lat_sum'] as double;
      final lngSum = cluster['lng_sum'] as double;
      final posts = cluster['posts'] as List<Post>;

      responseClusters.add({
        'latitude': latSum / count,
        'longitude': lngSum / count,
        'count': count,
        'is_cluster': count > 1,
        'radius': radius,
        'markers': posts.map((p) => p.toJson()).toList(),
      });
    }

    return {
      'message': 'Map clusters fetched successfully',
      'status': 200,
      'data': {
        'zoom': zoomLevel,
        'radius': radius,
        'page': pageNumber,
        'page_size': pageSizeValue,
        'total_clusters': totalClusters,
        'total_pages': totalPages,
        'clusters': responseClusters,
      },
    };
  }

  String _gridKey(double lat, double lng, int radiusM) {
    final latStep = radiusM / earthLatMeter;
    final lngStep = radiusM / (earthLatMeter * (cos(lat * pi / 180).abs()));

    final latKey = (lat / latStep).floor();
    final lngKey = (lng / lngStep).floor();

    return '$latKey,$lngKey';
  }

  int _getRadiusByZoom(int zoom) {
    double zoomDouble;
    try {
      zoomDouble = zoom.toDouble();
    } catch (e) {
      zoomDouble = 10.0;
    }

    zoomDouble = max(1.0, min(15.0, zoomDouble));

    const maxRadius = 100000.0;
    const minRadius = 500.0;

    final t = (zoomDouble - 1) / (15 - 1);
    final radius = maxRadius * pow(minRadius / maxRadius, t);

    return radius.toInt();
  }
}
