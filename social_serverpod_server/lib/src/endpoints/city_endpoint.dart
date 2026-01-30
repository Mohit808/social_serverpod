import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class CityEndpoint extends Endpoint {

  /// Get cities with optional filters
  // Future<Map<String, dynamic>> getCities(Session session, {int? id, String? search, bool? noImage, bool? hideCount, int page = 1,}) async {
  //   // Get single city by ID
  //
  //   int pageSize = 20;
  //
  //   if (id != null) {
  //     final city = await City.db.findById(session, id);
  //
  //     if (city == null) {
  //       return {
  //         'message': 'City not found',
  //         'status': 404,
  //         'data': null,
  //       };
  //     }
  //
  //     // Get post count for single city
  //     final postCount = await _getCityPostCount(session, id);
  //
  //     return {
  //       'message': 'City fetched successfully',
  //       'status': 200,
  //       'data': _cityToJson(city, postCount),
  //     };
  //   }
  //
  //   List<City> cities;
  //   Map<int, int> postCounts = {};
  //
  //   // Filter by search
  //   if (search != null && search.isNotEmpty) {
  //     cities = await City.db.find(
  //       session,
  //       where: (t) => t.name.ilike('%$search%'),
  //       orderBy: (t) => t.id,
  //       orderDescending: true,
  //     );
  //
  //     // Get post counts unless hideCount is true
  //     if (hideCount != true) {
  //       postCounts = await _getPostCountsForCities(
  //         session,
  //         cities.map((c) => c.id!).toList(),
  //       );
  //
  //       // Sort by post count
  //       cities.sort((a, b) {
  //         final countA = postCounts[a.id] ?? 0;
  //         final countB = postCounts[b.id] ?? 0;
  //         return countB.compareTo(countA);
  //       });
  //     }
  //   }
  //   // Filter by no image
  //   else if (noImage == true) {
  //     cities = await City.db.find(
  //       session,
  //       where: (t) => t.image.equals(null) | t.image.equals(''),
  //       orderBy: (t) => t.id,
  //       orderDescending: true,
  //     );
  //   }
  //   // Get all cities ordered by post count
  //   else {
  //     cities = await City.db.find(session);
  //
  //     // Get post counts for all cities
  //     postCounts = await _getPostCountsForCities(
  //       session,
  //       cities.map((c) => c.id!).toList(),
  //     );
  //
  //     // Sort by post count
  //     cities.sort((a, b) {
  //       final countA = postCounts[a.id] ?? 0;
  //       final countB = postCounts[b.id] ?? 0;
  //       return countB.compareTo(countA);
  //     });
  //   }
  //
  //   // Pagination
  //   final startIndex = (page - 1) * pageSize;
  //   final endIndex = startIndex + pageSize;
  //   final paginatedCities = cities.sublist(
  //     startIndex,
  //     endIndex > cities.length ? cities.length : endIndex,
  //   );
  //
  //   // Convert to JSON with post counts
  //   final citiesJson = paginatedCities.map((city) {
  //     final postCount = postCounts[city.id] ?? 0;
  //     return _cityToJson(city, postCount);
  //   }).toList();
  //
  //   return {
  //     'message': 'Cities fetched successfully',
  //     'status': 200,
  //     'data': citiesJson,
  //   };
  // }


  Future<Map<String, dynamic>> getCities(
      Session session, {
        int? id,
        String? search,
        bool? noImage,
        bool? hideCount,
        String? page,  // Change this to String
      }) async {// Get single city by ID

    int pageSize = 20;
    int pageNumber = int.tryParse(page ?? '1') ?? 1;  // Parse the string to int

    if (id != null) {
      final city = await City.db.findById(session, id);

      if (city == null) {
        return {
          'message': 'City not found',
          'status': 404,
          'data': null,
        };
      }

      // Get post count for single city
      final postCount = await _getCityPostCount(session, id);

      return {
        'message': 'City fetched successfully',
        'status': 200,
        'data': _cityToJson(city, postCount),
      };
    }

    List<City> cities;
    Map<int, int> postCounts = {};

    // Filter by search
    if (search != null && search.isNotEmpty) {
      cities = await City.db.find(
        session,
        where: (t) => t.name.ilike('%$search%'),
        orderBy: (t) => t.id,
        orderDescending: true,
      );

      // Get post counts unless hideCount is true
      if (hideCount != true) {
        postCounts = await _getPostCountsForCities(
          session,
          cities.map((c) => c.id!).toList(),
        );

        // Sort by post count
        cities.sort((a, b) {
          final countA = postCounts[a.id] ?? 0;
          final countB = postCounts[b.id] ?? 0;
          return countB.compareTo(countA);
        });
      }
    }
    // Filter by no image
    else if (noImage == true) {
      cities = await City.db.find(
        session,
        where: (t) => t.image.equals(null) | t.image.equals(''),
        orderBy: (t) => t.id,
        orderDescending: true,
      );
    }
    // Get all cities ordered by post count
    else {
      cities = await City.db.find(session);

      // Get post counts for all cities
      postCounts = await _getPostCountsForCities(
        session,
        cities.map((c) => c.id!).toList(),
      );

      // Sort by post count
      cities.sort((a, b) {
        final countA = postCounts[a.id] ?? 0;
        final countB = postCounts[b.id] ?? 0;
        return countB.compareTo(countA);
      });
    }

    // Pagination - use pageNumber instead of page
    final startIndex = (pageNumber - 1) * pageSize;
    final endIndex = startIndex + pageSize;
    final paginatedCities = cities.sublist(
      startIndex,
      endIndex > cities.length ? cities.length : endIndex,
    );

    // Convert to JSON with post counts
    final citiesJson = paginatedCities.map((city) {
      final postCount = postCounts[city.id] ?? 0;
      return _cityToJson(city, postCount);
    }).toList();

    return {
      'message': 'Cities fetched successfully',
      'status': 200,
      'data': citiesJson,
    };
  }


  /// Create a new city
  Future<Map<String, dynamic>> createCity(
      Session session, {
        required String name,
        String? image,
        String? division,
        String? state,
        String? country,
      }) async {
    try {
      final city = await City.db.insertRow(
        session,
        City(
          name: name,
          image: image,
          division: division,
          state: state,
          country: country,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      );

      final postCount = 0; // New city has no posts

      return {
        'message': 'City created successfully',
        'status': 200,
        'data': _cityToJson(city, postCount),
      };
    } catch (e) {
      return {
        'message': 'Invalid data',
        'status': 400,
        'errors': e.toString(),
      };
    }
  }

  /// Update an existing city
  Future<Map<String, dynamic>> updateCity(
      Session session, {
        required int id,
        String? name,
        String? image,
        String? division,
        String? state,
        String? country,
      }) async {
    final city = await City.db.findById(session, id);

    if (city == null) {
      return {
        'message': 'City not found',
        'status': 404,
        'data': null,
      };
    }

    try {
      // Update only provided fields
      final updatedCity = city.copyWith(
        name: name ?? city.name,
        image: image ?? city.image,
        division: division ?? city.division,
        state: state ?? city.state,
        country: country ?? city.country,
        updatedAt: DateTime.now(),
      );

      final result = await City.db.updateRow(session, updatedCity);
      final postCount = await _getCityPostCount(session, id);

      return {
        'message': 'City updated successfully',
        'status': 200,
        'data': _cityToJson(result, postCount),
      };
    } catch (e) {
      return {
        'message': 'Invalid data',
        'status': 400,
        'errors': e.toString(),
      };
    }
  }

  /// Get post count for a single city
  Future<int> _getCityPostCount(Session session, int cityId) async {
    final posts = await Post.db.find(
      session,
      where: (t) =>
      t.cityId.equals(cityId) &
      t.isDeleted.equals(false) &
      t.isArchived.equals(false),
    );

    return posts.length;
  }

  /// Get post counts for multiple cities
  Future<Map<int, int>> _getPostCountsForCities(
      Session session,
      List<int> cityIds,
      ) async {
    if (cityIds.isEmpty) return {};

    final posts = await Post.db.find(
      session,
      where: (t) =>
      t.cityId.inSet(cityIds.toSet()) &
      t.isDeleted.equals(false) &
      t.isArchived.equals(false),
    );

    final counts = <int, int>{};
    for (var post in posts) {
      if (post.cityId != null) {
        counts[post.cityId!] = (counts[post.cityId!] ?? 0) + 1;
      }
    }
    return counts;
  }

  /// Convert City to JSON with post_count
  Map<String, dynamic> _cityToJson(City city, int postCount) {
    return {
      'id': city.id,
      'post_count': postCount,
      'name': city.name,
      'image': city.image,
      'division': city.division,
      'state': city.state,
      'country': city.country,
    };
  }
}
