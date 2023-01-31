import 'package:face_book_clone/appBarTabs/friends_tab.dart';
import 'package:face_book_clone/appBarTabs/home_tab.dart';
import 'package:face_book_clone/appBarTabs/menu_tab.dart';
import 'package:face_book_clone/appBarTabs/notifications_tab.dart';
import 'package:face_book_clone/appBarTabs/profile_tab.dart';
import 'package:face_book_clone/appBarTabs/watch_tab.dart';
import 'package:face_book_clone/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FaceBookHomePage extends StatefulWidget {
  const FaceBookHomePage({super.key});

  @override
  _FaceBookHomePageState createState() => _FaceBookHomePageState();
}

class _FaceBookHomePageState extends State<FaceBookHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 6);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<Widget> tabBarViewWidegtsList = [
      HomeTab(),
      FriendsTab(),
      WatchTab(),
      ProfileTab(),
      NotificationsTab(),
      MenuTab()
    ];
    return Scaffold(
      appBar: homePageAppBar(width, height),
      body: tabBarview(tabBarViewWidegtsList),
    );
  }

  PreferredSizeWidget homePageAppBar(double width, double height) {
    double iconSize = width * 0.08;
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      title: appBarTitle(width, height),
      backgroundColor: Colors.white,
      elevation: 0.0,
      bottom: appBarTaps(iconSize),
    );
  }

  Widget? appBarTitle(double width, double height) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            Text(
              'facebook',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: width * 0.09,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              imagePath('buttons/messenger_Logo.png'),
              width: width * 0.08,
            ),
          ),
        ]),
      ],
    );
  }

  PreferredSizeWidget appBarTaps(double iconSize) {
    return TabBar(
      indicatorColor: Colors.lightBlueAccent,
      controller: _tabController,
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.blueAccent,
      tabs: [
        Tab(icon: Icon(Icons.home, size: iconSize)),
        Tab(icon: Icon(Icons.people, size: iconSize)),
        Tab(icon: Icon(Icons.ondemand_video, size: iconSize)),
        Tab(icon: Icon(Icons.account_circle, size: iconSize)),
        Tab(icon: Icon(Icons.notifications, size: iconSize)),
        Tab(icon: Icon(Icons.menu, size: iconSize))
      ],
    );
  }

  tabBarview(List<Widget> tabBarViewWidegtsList) {
    return TabBarView(
        controller: _tabController, children: tabBarViewWidegtsList);
  }
}
