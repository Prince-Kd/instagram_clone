import 'package:flutter/material.dart';

class PostBody extends StatelessWidget {
  const PostBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      child: Image.asset('assets/shoes.jpeg', fit: BoxFit.fitHeight,),
    );
  }
}
