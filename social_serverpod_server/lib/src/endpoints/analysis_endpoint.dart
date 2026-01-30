import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class AnalysisEndpoint extends Endpoint {

  /// Get all tags with post counts, ordered by post count
  Future<Map<String, dynamic>> getTags(
      Session session, {
        String? page,
      }) async {
    int pageSize = 20;
    int pageNumber = int.tryParse(page ?? '1') ?? 1;

    // Get all tags
    final tags = await Tag.db.find(
      session,
      orderBy: (t) => t.id,
    );

    // Get post counts for all tags
    final postCounts = await _getPostCountsForTags(
      session,
      tags.map((t) => t.id!).toList(),
    );

    // Sort tags by post count (descending)
    tags.sort((a, b) {
      final countA = postCounts[a.id] ?? 0;
      final countB = postCounts[b.id] ?? 0;
      return countB.compareTo(countA);
    });

    // Pagination
    final startIndex = (pageNumber - 1) * pageSize;
    final endIndex = startIndex + pageSize;
    final paginatedTags = tags.sublist(
      startIndex,
      endIndex > tags.length ? tags.length : endIndex,
    );

    // Convert to JSON with post counts
    final tagsJson = paginatedTags.map((tag) {
      final postCount = postCounts[tag.id] ?? 0;
      return _tagToJson(tag, postCount);
    }).toList();

    return {
      'message': 'Tags fetched successfully.',
      'status': 200,
      'data': tagsJson,
    };
  }

  /// Get post counts for multiple tags
  Future<Map<int, int>> _getPostCountsForTags(
      Session session,
      List<int> tagIds,
      ) async {
    if (tagIds.isEmpty) return {};

    final postTags = await PostTag.db.find(
      session,
      where: (t) => t.tagId.inSet(tagIds.toSet()),
    );

    final counts = <int, int>{};
    for (var postTag in postTags) {
      counts[postTag.tagId] = (counts[postTag.tagId] ?? 0) + 1;
    }

    return counts;
  }

  /// Convert Tag to JSON with post_count
  Map<String, dynamic> _tagToJson(Tag tag, int postCount) {
    return {
      'id': tag.id,
      'name': tag.name,
      'color': tag.color,
      'image': tag.image,
      'post_count': postCount,
      'created_at': tag.createdAt?.toIso8601String(),
    };
  }
}
