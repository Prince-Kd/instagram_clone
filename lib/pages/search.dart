import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/widgets/search_post.dart';
import 'package:instagram_clone/widgets/search_widget.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> posts = List.generate(20, (index) => SearchPost(index: index));
    return Scaffold(
        body: CustomScrollView(
      //physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverAppBar(title: SearchWidget()),
        SliverFillRemaining(
          fillOverscroll: true,
          child: StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            children: [...posts],
          ),
        )
      ],
    ));
  }
}
