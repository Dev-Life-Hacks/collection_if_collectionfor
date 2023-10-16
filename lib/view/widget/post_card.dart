import 'package:collection_if_collection_for/models/post_model.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final PostModel postModel;

  const PostCard({super.key, required this.postModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              postModel.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(postModel.description),
            const SizedBox(height: 8),
            if (postModel.imageUrl != null) // collection-if
              Image.network(postModel.imageUrl!),
            const SizedBox(height: 8),
            if (postModel.tags != null) ...[
              // collection-for
              Wrap(
                spacing: 8,
                children: [
                  for (var tag in postModel.tags!) Chip(label: Text(tag)),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
