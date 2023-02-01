import 'package:face_book_clone/core/utils/constants.dart';
import 'package:face_book_clone/models/post.dart';
import 'package:face_book_clone/widgets/likesIcon.dart';
import 'package:face_book_clone/widgets/separator_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});
  // Start Online Users Data
  final List<String> _usersImages = [
    imagePath('accountImages/mahmoud.jpg'),
    imagePath('accountImages/hazem.jpg'),
    imagePath('accountImages/mohamed adel.jpg'),
    imagePath('accountImages/mostafa.jpg'),
    imagePath('accountImages/sameh.jpg'),
    imagePath('accountImages/hazem.jpg'),
    imagePath('accountImages/mohamed adel.jpg'),
    imagePath('accountImages/mahmoud.jpg'),
    imagePath('accountImages/hazem.jpg'),
    imagePath('accountImages/mohamed adel.jpg'),
  ];

  List<Widget> _onlineUsers(double width, double height) {
    return List.generate(
      10,
      (index) {
        return Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 22.0,
                  backgroundImage: AssetImage(_usersImages[index]),
                ),

                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    height: 15.0,
                    width: 15.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF4BCB1F),
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // const Positioned(
                //   right: 1.0,
                //   bottom: 1.0,
                //   child: CircleAvatar(
                //     radius: 6.0,
                //     backgroundColor: Colors.green,
                //   ),
                // ),
              ],
            ),
            SizedBox(width: width * 0.05),
          ],
        );
      },
    );
  }

// End Online Users Data

// Start Users Story Data
  final List<String> _userStorySharedImage = [
    imagePath('posts/hazem_paper.jpg'),
    imagePath('posts/landscape.jpg'),
    imagePath('posts/sameh.jpg'),
    imagePath('posts/hazem_paper.jpg'),
    imagePath('posts/landscape.jpg'),
    imagePath('posts/sameh.jpg'),
  ];
  final List<String> _userStoryAccountName = [
    'Dr Hazem Ghaith',
    'Eng Mostafa Ibrahim',
    'Samrh Mehanna',
    'Dr Hazem Ghaith',
    'Eng Mostafa Ibrahim',
    'Samrh Mehanna',
  ];
  final List<String> _userStoryAccountImage = [
    imagePath('accountImages/hazem.jpg'),
    imagePath('accountImages/mostafa.jpg'),
    imagePath('accountImages/sameh.jpg'),
    imagePath('accountImages/hazem.jpg'),
    imagePath('accountImages/mostafa.jpg'),
    imagePath('accountImages/sameh.jpg'),
  ];

  List<Widget> _usersStories(double width, double height) {
    return List.generate(6, (index) {
      return Row(
        children: [
          Stack(
            children: [
              Container(
                width: width * 0.35,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(_userStorySharedImage[index]),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              Positioned(
                bottom: 9,
                left: 4,
                child: Text(
                  _userStoryAccountName[index],
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.04),
                ),
              ),
              Positioned(
                left: 5,
                top: 5,
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Color(0xFF1777F2),
                  child: CircleAvatar(
                    radius: 17.0,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: AssetImage(_userStoryAccountImage[index]),
                  ),
                ),
                // CircleAvatar(
                //   radius: 20.0,
                //   backgroundImage: AssetImage(_userStoryAccountImage[index]),
                // ),
              ),
            ],
          ),
          SizedBox(width: width * 0.025),
        ],
      );
    });
  }
// End Users Story Data

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _addYourStorySection(context, width, height),
          const SeparatorWidget(),
          _onlineRowSection(width, height),
          const SeparatorWidget(),
          _storySection(width, height),
          for (Post post in posts)
            Column(
              children: <Widget>[
                const SeparatorWidget(),
                postSection(post, width, height),
              ],
            ),
          const SeparatorWidget(),
        ],
      ),
    );
  }

// Start Add Your Storu Section 'First Sectin'
  Widget _addYourStorySection(
      BuildContext context, double width, double height) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: width * 0.03,
        ),
        _statusTextFieldAndAccountImage(width, height),
        const Divider(),
        _livePhotoRoomButtons(width, height),
      ],
    );
  }

  Widget _statusTextFieldAndAccountImage(double width, double height) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Account Image
          CircleAvatar(
            radius: 28.0,
            backgroundImage: AssetImage(imagePath('accountImages/mahmoud.jpg')),
          ),
          // Add Status Text Field
          Expanded(
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              height: width * 0.145,
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.grey[400]!),
                  borderRadius: BorderRadius.circular(30.0)),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Write Your Status Here...',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _livePhotoRoomButtons(double width, double height) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.live_tv,
                size: width * 0.06,
                color: Colors.pink,
              ),
              SizedBox(width: width * 0.02),
              Text(
                'Live',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.045),
              ),
            ],
          ),
          SizedBox(
            height: width * 0.05,
            child: VerticalDivider(color: Colors.grey[600]),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.photo_library,
                size: width * 0.06,
                color: Colors.green,
              ),
              SizedBox(width: width * 0.02),
              Text(
                'Photo',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.045),
              ),
            ],
          ),
          SizedBox(
            height: width * 0.05,
            child: VerticalDivider(color: Colors.grey[600]),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.video_call,
                size: width * 0.06,
                color: Colors.purple,
              ),
              SizedBox(width: width * 0.02),
              Text(
                'Room',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.045),
              ),
            ],
          ),
        ],
      ),
    );
  }

// End Add Your Storu Section 'First Sectin'
// Start Online Users Section 'Second Section'
  Widget _onlineRowSection(double width, double height) {
    return Container(
      height: width * 0.2,
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: width * 0.05),
          // Create Room Button
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                border: Border.all(width: 1.0, color: Colors.blue)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.video_call, size: width / 12, color: Colors.purple),
                SizedBox(width: width / 70),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Create', style: TextStyle(color: Colors.blue)),
                    Text('Room', style: TextStyle(color: Colors.blue)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: width * 0.05),
          // Online Users
          ..._onlineUsers(width, height)
        ],
      ),
    );
  }
// End Online Users Section 'Second Section'

// Start  Your and users Stories  Section 'third section'
  Widget _storySection(double width, double height) {
    return Container(
      height: width * 0.6,
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: width * 0.03),
          // Add Strory
          Stack(
            children: [
              Container(
                width: width * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imagePath('accountImages/mahmoud.jpg'),
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Positioned(
                right: 5,
                bottom: 5,
                child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage(imagePath('buttons/plus.png'))),
              ),
            ],
          ),
          SizedBox(width: width * 0.025),
          ..._usersStories(width, height),
        ],
      ),
    );
  }
// Start  Your and users Stories  Section 'third section'

// Start Posts Section '4th Section'
  Widget postSection(Post post, double width, double height) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(post.profileImageUrl),
                radius: width * 0.06,
              ),
              SizedBox(width: width * 0.04),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(post.username,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.045)),
                  SizedBox(height: width * 0.01),
                  Text(post.time)
                ],
              ),
              const Expanded(child: SizedBox()),
              Icon(Icons.more_horiz, size: width * 0.06)
            ],
          ),
          SizedBox(height: width * 0.04),
          Align(
            alignment: Alignment.topLeft,
            child: Text(post.content,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: width * 0.05,
                )),
          ),
          SizedBox(height: width * 0.06),
          (post.sharedImage.isNotEmpty)
              ? Column(
                  children: [
                    Center(
                      child: Image.asset(post.sharedImage),
                    ),
                    SizedBox(height: width * 0.06),
                  ],
                )
              : const SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const LikesIcon(),
                  Text(' ${post.likes}'),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('${post.comments} comments  •  '),
                  Text('${post.shares} shares'),
                ],
              ),
            ],
          ),
          Divider(height: width * 0.09),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.thumb_up,
                      size: width * 0.07,
                      color: (post.isLiked) ? Colors.blue : Colors.black),
                  SizedBox(width: width * 0.02),
                  Text('Like',
                      style: TextStyle(
                          fontSize: width * 0.04,
                          color: (post.isLiked) ? Colors.blue : Colors.black)),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.message,
                    size: width * 0.06,
                  ),
                  SizedBox(width: width * 0.02),
                  Text('Comment',
                      style: TextStyle(
                        fontSize: width * 0.04,
                      )),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.share,
                    size: width * 0.06,
                  ),
                  SizedBox(width: width * 0.02),
                  Text('Share',
                      style: TextStyle(
                        fontSize: width * 0.04,
                      )),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
