import 'package:flutter/material.dart';

class PostBody extends StatelessWidget {
  final int index;
  const PostBody({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      child: Image.asset('assets/$index.jpeg', fit: BoxFit.cover,),
    );
  }
}
