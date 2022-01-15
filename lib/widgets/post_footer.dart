import 'package:flutter/material.dart';

class PostFooter extends StatefulWidget {
  final int index;
  const PostFooter({Key? key, required this.index}) : super(key: key);

  @override
  State<PostFooter> createState() => _PostFooterState();
}

class _PostFooterState extends State<PostFooter> {
  Icon favIcon = const Icon(
    Icons.favorite_outline,
    size: 26,
    //key: Key(widget.index.toString()),
  );

  Icon saveIcon = const Icon(
    Icons.bookmark_outline,
    size: 26,
  );

  bool liked = false;
  bool saved = false;

  void _changeIcon(){
    if(liked == false) {
      setState(() {
        favIcon = const Icon(
          Icons.favorite,
          size: 26,
          color: Colors.red,
          //key: Key(widget.index.toString()),
        );
        liked = true;
      });
    }else{
      setState(() {
        favIcon = const Icon(
          Icons.favorite_outline,
          size: 26,
          color: Colors.black,
          //key: Key(widget.index.toString()),
        );
        liked = false;
      });
    }
  }

  void _savePost(){
    if(saved == false){
      setState(() {
        saveIcon = const Icon(
          Icons.bookmark,
          size: 26,
        );
        saved = true;
      });
    }else{
      setState(() {
        saveIcon = const Icon(
          Icons.bookmark_outline,
          size: 26,
        );
        saved = false;
      });
    }
  }

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
                InkWell(onTap: _changeIcon, child: favIcon,),
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
          InkWell(onTap: _savePost, child: saveIcon,),
        ],
      ),
    );
  }
}
