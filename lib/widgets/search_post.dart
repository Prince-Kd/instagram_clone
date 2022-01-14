import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPost extends StatelessWidget {
  final index;
  const SearchPost({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int rnd = Random().nextInt(2);

    return StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: rnd+1,
        child: InkWell(
          onTap: (){},
          splashColor: Colors.transparent,
          child: Image.asset('assets/$index.jpeg', fit: BoxFit.cover,),
        ));
  }
}

