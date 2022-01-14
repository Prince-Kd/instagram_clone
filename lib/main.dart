import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/home.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:instagram_clone/pages/profile.dart';
import 'package:instagram_clone/pages/reels.dart';
import 'package:instagram_clone/pages/search.dart';
import 'package:instagram_clone/pages/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          button: TextStyle(color: Colors.black)
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.grey[600]
        ),
        canvasColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black),
          centerTitle: false,
          actionsIconTheme: IconThemeData(
            color: Colors.black
          )
        )
      ),
      home: TabsContainer(),
    );
  }
}

class TabsContainer extends StatefulWidget {
  const TabsContainer({Key? key}) : super(key: key);

  @override
  State<TabsContainer> createState() => _TabsContainerState();
}

class _TabsContainerState extends State<TabsContainer> {
  int _selectedIndex = 0;
  static const List<Widget> pages = [
    Home(),
    Search(),
    Reels(),
    Shop(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? Icons.home_rounded :  Icons.home_outlined,),
            label: '',
              backgroundColor: Colors.white
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined ),
            label: '',
              backgroundColor: Colors.white

          ),
          BottomNavigationBarItem(
            icon: ClipRRect(borderRadius: BorderRadius.circular(7),child: Image.asset('assets/reel.png', fit: BoxFit.contain, width: 24, height: 24,)),
            label: '',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3 ? Icons.shopping_bag_rounded : Icons.shopping_bag_outlined),
            label: '',
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 4 ? Icons.account_circle_rounded : Icons.account_circle_outlined,),
            label: '',
              backgroundColor: Colors.white
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: _selectedIndex == 2 ? Colors.white : Colors.black,
        enableFeedback: false,
        iconSize: 28,
        elevation: 2,
        onTap: _onItemTapped,
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}


