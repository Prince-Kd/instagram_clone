import 'package:flutter/material.dart';

class StoryAvatar extends StatelessWidget {
  final int index;
  const StoryAvatar({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      splashColor: Colors.transparent,
      child: Container(
        //width: 75,
        decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.grey,), shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/$index.jpeg'),
            radius: 32,
          ),
        ),
      ),
    );
  }
}
