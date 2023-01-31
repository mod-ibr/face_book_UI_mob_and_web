import 'package:face_book_clone/core/utils/constants.dart';
import 'package:face_book_clone/widgets/likesIcon.dart';
import 'package:face_book_clone/widgets/separator_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WatchTab extends StatelessWidget {
  const WatchTab({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<Widget> watchButtonsList = [
      watchButton(width, height, icon: Icons.videocam, title: 'Live'),
      const SizedBox(width: 10.0),
      watchButton(width, height, icon: Icons.music_note, title: 'Music'),
      const SizedBox(width: 10.0),
      watchButton(width, height, icon: Icons.check_box, title: 'Following'),
      const SizedBox(width: 10.0),
      watchButton(width, height, icon: Icons.fastfood, title: 'Food'),
      const SizedBox(width: 10.0),
      watchButton(width, height, icon: Icons.gamepad, title: 'Gaming'),
      const SizedBox(width: 10.0),
    ];

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Title
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
            child: Text(
              'Watch',
              style: TextStyle(
                  fontSize: width * 0.08, fontWeight: FontWeight.bold),
            ),
          ),

          ///list view For Live, music, Following
          Container(
            padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
            height: width * 0.18,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: watchButtonsList,
            ),
          ),

          const SeparatorWidget(),

          Column(
            children: <Widget>[
              videoWidget(width, height,
                  image: imagePath('accountImages/mahmoud.jpg'),
                  name: 'Mahmoud Ibrahim',
                  time: '7h',
                  likes: '50',
                  isLiked: true,
                  comments: '1050',
                  view: '300'),
            ],
          ),

          const SizedBox(height: 20.0),

          const SeparatorWidget(),

          Column(
            children: <Widget>[
              videoWidget(width, height,
                  image: imagePath('accountImages/mahmoud.jpg'),
                  name: 'Mahmoud Ibrahim',
                  time: '7h',
                  likes: '50',
                  isLiked: true,
                  comments: '1050',
                  view: '300'),
            ],
          ),
          const SizedBox(height: 20.0),

          const SeparatorWidget(),

          Column(
            children: <Widget>[
              videoWidget(width, height,
                  image: imagePath('accountImages/mahmoud.jpg'),
                  name: 'Mahmoud Ibrahim',
                  time: '7h',
                  likes: '50',
                  isLiked: true,
                  comments: '1050',
                  view: '300'),
            ],
          ),
          const SizedBox(height: 20.0),

          const SeparatorWidget(),

          Column(
            children: <Widget>[
              videoWidget(width, height,
                  image: imagePath('accountImages/mahmoud.jpg'),
                  name: 'Mahmoud Ibrahim',
                  time: '7h',
                  likes: '50',
                  isLiked: true,
                  comments: '1050',
                  view: '300'),
            ],
          ),
          const SizedBox(height: 20.0),

          const SeparatorWidget(),
        ],
      ),
    );
  }

  Widget watchButton(double width, double height,
      {required IconData icon, required String title}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0), color: Colors.grey[300]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: width * 0.07),
          SizedBox(width: width * 0.02),
          Text(
            title,
            style:
                TextStyle(fontSize: width * 0.045, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget videoWidget(double width, double height,
      {required String image,
      required String name,
      required String time,
      required String likes,
      required bool isLiked,
      required String comments,
      required String view}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: width * 0.06,
              ),
              const SizedBox(width: 7.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.05),
                  ),
                  const SizedBox(height: 5.0),
                  Text(time)
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          height: 200,
          color: Colors.grey[300],
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const LikesIcon(),
                  Text('  $likes'),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('$comments comments  •  '),
                  Text('$view View'),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Divider(height: 30.0),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.thumb_up,
                      size: width * 0.07,
                      color: (isLiked) ? Colors.blue : Colors.black),
                  const SizedBox(width: 5.0),
                  Text('Like',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: (isLiked) ? Colors.blue : Colors.black)),
                ],
              ),
              Row(
                children: const <Widget>[
                  Icon(FontAwesomeIcons.message, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Comment', style: TextStyle(fontSize: 14.0)),
                ],
              ),
              Row(
                children: const <Widget>[
                  Icon(FontAwesomeIcons.share, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Share', style: TextStyle(fontSize: 14.0)),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
