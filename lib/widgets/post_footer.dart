import 'package:flutter/material.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.favorite_outline, size: 26,),
                InkWell(
                  onTap: (){},
                  splashColor: Colors.transparent,
                  child: Image.asset('assets/chat_bubble.png', width: 22, height: 22,),
                ),
                InkWell(
                  onTap: (){},
                  splashColor: Colors.transparent,
                  child: Image.asset('assets/share.png', width: 22, height: 22,),
                ),
              ],
            ),
          ),
          const Icon(Icons.bookmark_outline, size: 26,),
        ],
      ),
    );
  }
}
