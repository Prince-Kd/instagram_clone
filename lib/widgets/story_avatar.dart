import 'package:flutter/material.dart';

class StoryAvatar extends StatelessWidget {
  const StoryAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      splashColor: Colors.transparent,
      child: Container(
        //width: 75,
        decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.grey,), shape: BoxShape.circle),
        child: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/shoes.jpeg'),
            radius: 32,
          ),
        ),
      ),
    );
  }
}
