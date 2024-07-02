import 'package:flutter/material.dart';
import 'news_tile.dart';

class NewsTileList extends StatelessWidget {
  const NewsTileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
      return const NewsTile();
    }));
  }
}
