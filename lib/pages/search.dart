import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/widgets/search_post.dart';
import 'package:instagram_clone/widgets/search_widget.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, bool innerBoxIsScrolled) => [
                    const SliverAppBar(
                        snap: true,
                        floating: true,
                        title: SearchWidget(),
                    ),
                  ],
              body: StaggeredGridView.countBuilder(
                padding: const EdgeInsets.only(top: 0),
                crossAxisCount: 3,
                itemCount: 34,
                itemBuilder: (BuildContext context, int index) =>
                    SearchPost(index: index),
                staggeredTileBuilder: (int index) =>
                    StaggeredTile.count(1, index.isEven ? 2 : 1),
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              ),),
        ));
  }
}

// Padding(
// padding: const EdgeInsets.only(top: 0),
// child: GridView(
// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 3,
// mainAxisSpacing: 2,
// crossAxisSpacing: 2,
// ),
// physics: const NeverScrollableScrollPhysics(),
// children: [
// StaggeredGrid.count(
// crossAxisCount: 3,
// mainAxisSpacing: 2,
// crossAxisSpacing: 2,
// children: [
// ...posts
// ],
// ),
// ],
// ),
