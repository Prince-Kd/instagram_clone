import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/story_avatar.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0, top: 5, left: 10, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StoryAvatar(),
            Text('IcePrinceOfGoshen', textAlign: TextAlign.center, style: TextStyle(fontSize: 13), overflow: TextOverflow.ellipsis,)
          ],
        ),
      ),
    );
  }
}
