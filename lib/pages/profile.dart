import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/widgets/search_post.dart';
import 'package:instagram_clone/widgets/stats_card.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  TabController? controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              '__ice_.prince',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_box_outlined,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 30,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 15),
        child: ListView(
          primary: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/shoes.jpeg'),
                    ),
                    Positioned(
                        left: 70,
                        top: 70,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Icon(
                              Icons.add_circle,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    StatsCard(stat: 'Posts', val: '16'),
                    SizedBox(
                      width: 20,
                    ),
                    StatsCard(stat: 'Followers', val: '1,923'),
                    SizedBox(
                      width: 15,
                    ),
                    StatsCard(stat: 'Following', val: '2,268')
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Mawuli Prince Kwadzofio',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
            const Text(
              'Ball is life',
              style: TextStyle(fontSize: 17),
            ),
            const Text(
              'Real hooper***',
              style: TextStyle(fontSize: 17),
            ),
            Text(
              '#iceinmyveins',
              style: TextStyle(color: Colors.blue[900], fontSize: 17),
            ),
            Row(
              children: [
                const Text(
                  'G. O. A. T is ',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '@easymoneysniper',
                  style: TextStyle(color: Colors.blue[900], fontSize: 17),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        enableFeedback: false,
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 40,
                  child: TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.person_add_outlined,
                      color: Colors.black,
                    ),
                    style: TextButton.styleFrom(
                        //padding: const EdgeInsets.symmetric(vertical: 8,),
                        enableFeedback: false,
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text(
                'Story highlights',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
              InkWell(
                  onTap: () {},
                  splashColor: Colors.transparent,
                  child: const Icon(Icons.keyboard_arrow_down_rounded))
            ]),
            // const Text('Keep your favorite stories on your profile', style: TextStyle(fontSize: 17),)
            const SizedBox(
              height: 10,
            ),
            TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                controller: controller,
                tabs: const [
                  Tab(
                    icon: Icon(
                      Icons.grid_3x3,
                    ),
                  ),
                  Tab(
                    text: 'Tab2',
                  ),
                  Tab(
                    text: 'Tab3',
                  ),
                  Tab(
                    text: 'Tab4',
                  )
                ]),
            SizedBox(
              height: 1000,
              child: TabBarView(
                controller: controller,
                children: [
                  StaggeredGridView.countBuilder(
                    primary: false,
                    padding: const EdgeInsets.only(top: 0),
                    crossAxisCount: 3,
                    itemCount: 16,
                    itemBuilder: (BuildContext context, int index) =>
                        SearchPost(index: index),
                    staggeredTileBuilder: (int index) =>
                        const StaggeredTile.count(1, 1),
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 2.0,
                  ),
                  Center(
                    child: Text('Tab2'),
                  ),
                  Center(
                    child: Text('Tab3'),
                  ),
                  Center(
                    child: Text('Tab4'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
