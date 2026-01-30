import 'dart:math';
import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class TagEndpoint extends Endpoint {
  static const int defaultPageSize = 10;

  /// Get tags with optional filtering, search, and pagination
  Future<Map<String, dynamic>> getTags(
      Session session, {
        String? search,
        String? noImage,
        String? hideCount,
        String? page,
      }) async {
    // Parse parameters
    final pageSize = defaultPageSize;
    final pageNum = int.tryParse(page ?? '') ?? 1;
    final shouldFilterNoImage = noImage?.trim().toLowerCase() == 'true';
    final shouldHideCount = hideCount?.trim().toLowerCase() == 'true';

    // Build query based on filters
    List<Tag> tags;

    try {
      if (shouldFilterNoImage) {
        // Filter tags with no image
        tags = await Tag.db.find(
          session,
          where: (t) => t.image.equals(null) | t.image.equals(''),
          orderBy: (t) => t.id,
          orderDescending: true,
        );
      } else if (search != null && search.trim().isNotEmpty) {
        // Search by name
        final searchTerm = search.trim();

        if (shouldHideCount) {
          // Simple search without post count
          tags = await Tag.db.find(
            session,
            where: (t) => t.name.like('%$searchTerm%'),
            orderBy: (t) => t.id,
            orderDescending: true,
          );
        } else {
          // Search with post count annotation
          tags = await _getTagsWithPostCount(session, searchTerm: searchTerm);
        }
      } else {
        // Get all tags
        if (shouldHideCount) {
          tags = await Tag.db.find(
            session,
            orderBy: (t) => t.id,
            orderDescending: true,
          );
        } else {
          // Get tags ordered by post count
          tags = await _getTagsWithPostCount(session);
        }
      }

      // Pagination
      final totalTags = tags.length;
      final totalPages = (totalTags / pageSize).ceil();
      final startIndex = (pageNum - 1) * pageSize;
      final endIndex = min(startIndex + pageSize, totalTags);

      final paginatedTags = tags.sublist(
        startIndex,
        min(endIndex, totalTags),
      );

      // Add post_count to each tag if not hidden
      final List<Map<String, dynamic>> tagsWithCount = [];
      for (var tag in paginatedTags) {
        final tagJson = tag.toJson();

        if (!shouldHideCount) {
          // Get post count for this tag
          final postTags = await PostTag.db.find(
            session,
            where: (pt) => pt.tagName.equals(tag.name),
          );
          final distinctPostIds = postTags.map((pt) => pt.postId).toSet();
          tagJson['post_count'] = distinctPostIds.length;
        }

        tagsWithCount.add(tagJson);
      }

      return {
        'message': 'Tags fetched successfully',
        'status': 200,
        'data': tagsWithCount,
      };
    } catch (e) {
      return {
        'message': 'Error fetching tags: ${e.toString()}',
        'status': 500,
      };
    }
  }

  /// Get a single tag by ID
  Future<Map<String, dynamic>> getTagById(
      Session session,
      int id,
      ) async {
    try {
      final tag = await Tag.db.findById(session, id);
      if (tag == null) {
        return {
          'message': 'Tag not found',
          'status': 404,
        };
      }

      // Get post count
      final postTags = await PostTag.db.find(
        session,
        where: (pt) => pt.tagName.equals(tag.name),
      );
      final distinctPostIds = postTags.map((pt) => pt.postId).toSet();

      final response = tag.toJson();
      response['post_count'] = distinctPostIds.length;

      return {
        'message': 'Tag fetched successfully',
        'status': 200,
        'data': response,
      };
    } catch (e) {
      return {
        'message': 'Error fetching tag: ${e.toString()}',
        'status': 500,
      };
    }
  }

  /// Create a new tag
  Future<Map<String, dynamic>> createTag(
      Session session,
      Map<String, dynamic> tagData,
      ) async {
    try {
      // Validate required fields
      if (!tagData.containsKey('name') || tagData['name'] == null || tagData['name'].toString().trim().isEmpty) {
        return {
          'message': 'Tag name is required',
          'status': 400,
        };
      }

      // Check if tag with same name already exists
      final existingTag = await Tag.db.findFirstRow(
        session,
        where: (t) => t.name.equals(tagData['name']),
      );

      if (existingTag != null) {
        return {
          'message': 'Tag with this name already exists',
          'status': 400,
        };
      }

      // Create tag from JSON
      final tag = Tag.fromJson(tagData);

      // Insert into database
      final createdTag = await Tag.db.insertRow(session, tag);

      final response = createdTag.toJson();
      response['post_count'] = 0; // New tags have 0 posts

      return {
        'message': 'Tag created successfully',
        'status': 200,
        'data': response,
      };
    } catch (e) {
      return {
        'message': 'Error creating tag: ${e.toString()}',
        'status': 500,
      };
    }
  }

  /// Update an existing tag
  Future<Map<String, dynamic>> updateTag(
      Session session,
      int id,
      Map<String, dynamic> tagData,
      ) async {
    try {
      // Find existing tag
      final existingTag = await Tag.db.findById(session, id);

      if (existingTag == null) {
        return {
          'message': 'Tag not found',
          'status': 404,
        };
      }

      // Check if updating name to one that already exists
      if (tagData.containsKey('name') && tagData['name'] != existingTag.name) {
        final duplicateTag = await Tag.db.findFirstRow(
          session,
          where: (t) => t.name.equals(tagData['name']) & t.id.notEquals(id),
        );

        if (duplicateTag != null) {
          return {
            'message': 'Tag with this name already exists',
            'status': 400,
          };
        }
      }

      // Update fields
      if (tagData.containsKey('name')) {
        existingTag.name = tagData['name'];
      }
      if (tagData.containsKey('image')) {
        existingTag.image = tagData['image'];
      }
      if (tagData.containsKey('color')) {
        existingTag.color = tagData['color'];
      }
      if (tagData.containsKey('priority')) {
        existingTag.priority = tagData['priority'];
      }

      // Save updated tag
      final updatedTag = await Tag.db.updateRow(session, existingTag);

      // Get post count
      final postTags = await PostTag.db.find(
        session,
        where: (pt) => pt.tagName.equals(updatedTag.name),
      );
      final distinctPostIds = postTags.map((pt) => pt.postId).toSet();

      final response = updatedTag.toJson();
      response['post_count'] = distinctPostIds.length;

      return {
        'message': 'Tag updated successfully',
        'status': 200,
        'data': response,
      };
    } catch (e) {
      return {
        'message': 'Error updating tag: ${e.toString()}',
        'status': 500,
      };
    }
  }

  /// Delete a tag
  Future<Map<String, dynamic>> deleteTag(
      Session session,
      int id,
      ) async {
    try {
      // Find existing tag
      final existingTag = await Tag.db.findById(session, id);

      if (existingTag == null) {
        return {
          'message': 'Tag not found',
          'status': 404,
        };
      }

      // Delete tag
      await Tag.db.deleteRow(session, existingTag);

      return {
        'message': 'Tag deleted successfully',
        'status': 200,
      };
    } catch (e) {
      return {
        'message': 'Error deleting tag: ${e.toString()}',
        'status': 500,
      };
    }
  }

  /// Helper method to get tags with post count
  Future<List<Tag>> _getTagsWithPostCount(
      Session session, {
        String? searchTerm,
      }) async {
    // Get all tags (with optional search)
    List<Tag> tags;

    if (searchTerm != null && searchTerm.isNotEmpty) {
      tags = await Tag.db.find(
        session,
        where: (t) => t.name.like('%$searchTerm%'),
      );
    } else {
      tags = await Tag.db.find(session);
    }

    // Get post counts for each tag
    final tagPostCounts = <int, int>{};

    for (var tag in tags) {
      final postTags = await PostTag.db.find(
        session,
        where: (pt) => pt.tagName.equals(tag.name),
      );

      // Get distinct post IDs
      final distinctPostIds = postTags.map((pt) => pt.postId).toSet();
      tagPostCounts[tag.id!] = distinctPostIds.length;
    }

    // Sort tags by post count (descending)
    tags.sort((a, b) {
      final countA = tagPostCounts[a.id] ?? 0;
      final countB = tagPostCounts[b.id] ?? 0;
      return countB.compareTo(countA);
    });

    return tags;
  }
}