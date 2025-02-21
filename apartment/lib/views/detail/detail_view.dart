import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final String title;
  final Widget content;

  const DetailView({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: content,
      ),
    );
  }
}
