import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/story_avatar.dart';

class YourStory extends StatelessWidget {
  const YourStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Padding(
        padding:
            const EdgeInsets.only(bottom: 8.0, top: 10, left: 10, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 90,
              child: InkWell(
                  onTap: () {},
                  splashColor: Colors.transparent,
                  child: Stack(
                    children: const[
                      Positioned(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/shoes.jpeg'),
                          radius: 32,
                        ),
                      ),
                      Positioned(
                        left: 38,
                        top: 38,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Icon(Icons.add_circle, color: Colors.blue, size: 25,),
                          ),
                        )
                      ),
                    ],
                  )),
            ),
            const Text(
              'Your story',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
