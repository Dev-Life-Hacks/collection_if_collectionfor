import 'package:collection_if_collection_for/models/post_model.dart';
import 'package:collection_if_collection_for/view/widget/post_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  
  final List<PostModel> postsList = [
    PostModel(
      title: 'Flutter Basics',
      description: 'Learn the basics of Flutter.',
      imageUrl: 'https://via.placeholder.com/150',
      tags: ['Flutter', 'Basics'],
    ),
    PostModel(
      title: 'Advanced Flutter',
      description: 'Dive deeper into Flutter.',
      tags: ['Flutter', 'Advanced'],
    ),
    PostModel(
      title: 'Flutter UI',
      description: 'Design beautiful UI with Flutter.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Posts'),
      ),
      body: ListView.builder(
        itemCount: postsList.length,
        itemBuilder: (context, index) {
          return PostCard(postModel: postsList[index]);
        },
      ),
    );
  }
}
