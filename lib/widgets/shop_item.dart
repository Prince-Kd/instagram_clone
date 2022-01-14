import 'package:flutter/material.dart';

class ShopItem extends StatelessWidget {
  final int index;
  const ShopItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        height: 180,
        child: GestureDetector(
          onTap: (){},
          child: Hero(
            tag: index.toString(),
            child: Image.asset('assets/shoes.jpeg', fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
