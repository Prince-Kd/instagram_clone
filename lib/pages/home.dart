import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/widgets/post.dart';
import 'package:instagram_clone/widgets/story_card.dart';
import 'package:instagram_clone/widgets/your_story.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> stories = List.generate(10, (index) => StoryCard());
    List<Widget> posts = List.generate(34, (index) => Post(index: index,));
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
              fontFamily: 'Billabong',
              fontSize: 34,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            splashRadius: 12,
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
            ),
          ),
          IconButton(
            splashRadius: 12,
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          InkWell(
            radius: 11,
            borderRadius: BorderRadius.circular(11),
            //splashColor: Colors.transparent,
            onTap: () {},
            child: Image.asset(
              'assets/messenger_logo.png',
              width: 22,
              height: 22,
            ),
          ),
          const SizedBox(
            width: 18,
          )
        ],
      ),
      body: ListView(
        primary: true,
        children: [
          SizedBox(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                YourStory(),
                ...stories
              ],
            ),
          ),
          ...posts,
        ],
      ),
    );
  }
}

// ListView.separated(
// scrollDirection: Axis.horizontal,
// itemBuilder: (context, index){
// return StoryCard();
// }, separatorBuilder: (context, index){
// return const SizedBox(width: 8,);
// }, itemCount: 10))
