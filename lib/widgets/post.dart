import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/post_body.dart';
import 'package:instagram_clone/widgets/post_footer.dart';
import 'package:instagram_clone/widgets/post_header.dart';

class Post extends StatelessWidget {
  final int index;
  const Post({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PostHeader(),
        PostBody(index: index,),
        PostFooter(index: index,),
      ],
    );
  }
}
