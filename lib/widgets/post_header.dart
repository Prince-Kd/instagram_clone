import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.transparent,
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/shoes.jpeg'),
        radius: 17,
      ),
      title: const Text('__ice_.prince', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),),
      //subtitle: const Text('__ice_.prince'),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz, color: Colors.black,)),
      contentPadding: EdgeInsets.only(right: 0, left: 15),
    );
  }
}


