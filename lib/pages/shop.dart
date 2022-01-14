import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/widgets/search_widget.dart';
import 'package:instagram_clone/widgets/shop_chip.dart';
import 'package:instagram_clone/widgets/shop_item.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> chipText = [
      'Shops',
      "Editor's picks",
      "Collections",
      "Guides",
      "Videos",
    ];
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_outline)),
          //SizedBox(width: 20,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
          //SizedBox(width: 15,)
        ],
      ),
      body: ListView(
        primary: true,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0),
            child: SearchWidget(),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: SizedBox(
              height: 40,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                return ShopChip(chipText: chipText[index]);
              }, separatorBuilder: (context, index){
                return const SizedBox(width: 10,);
              }, itemCount: chipText.length),
            ),
          ),
          const SizedBox(height: 5,),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
                mainAxisSpacing: 0
          ), itemBuilder: (context, index){
            return ShopItem(index: index);
              }),
        ],
      ),
    );
  }
}
