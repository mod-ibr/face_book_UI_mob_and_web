import 'package:face_book_clone/core/utils/constants.dart';
import 'package:face_book_clone/widgets/separator_widget.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            accountImageAndTitle(width, height),
            Divider(height: width * 0.12, thickness: 0.8),
            accountDetailes(width, height),
            Divider(height: width * 0.12, thickness: 0.8),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                friendsTitleAndNumbers(width, height),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Friend Account
                      friendwindow(width, height,
                          image: 'accountImages/hazem.jpg',
                          name: 'Dr Hazem Ghaith'),
                      friendwindow(width, height,
                          image: 'accountImages/mohamed adel.jpg',
                          name: 'Eng Mohamed Adel'),
                      friendwindow(width, height,
                          image: 'accountImages/mostafa.jpg',
                          name: 'Eng Mostafa Ibrahim'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Friend Account
                      friendwindow(width, height,
                          image: 'accountImages/sameh.jpg',
                          name: 'Sameh Mehanna'),
                    ],
                  ),
                ),
                // See All Friends Button
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  height: height * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(width * 0.018),
                  ),
                  child: Center(
                      child: Text('See All Friends',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.045))),
                ),
              ],
            ),
            const SeparatorWidget(),
          ],
        ),
      ),
    );
  }

  Widget accountImageAndTitle(
    double width,
    double height,
  ) {
    return SizedBox(
      height: height * 0.55,
      child: Stack(
        children: <Widget>[
          // Account background
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            height: height * 0.27,
            decoration: BoxDecoration(
              color: loadingImage,
              image: DecorationImage(
                  image: AssetImage(imagePath('posts/nvidia.jpg')),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(width * 0.03),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              // Account Profile Image
              CircleAvatar(
                  backgroundColor: loadingImage,
                  backgroundImage:
                      AssetImage(imagePath('accountImages/mahmoud.jpg')),
                  radius: width * 0.18),
              // Account Profile Name
              Container(
                margin:
                    EdgeInsets.only(top: width * 0.03, bottom: width * 0.08),
                child: Text('Mahmoud Ibrahim',
                    style: TextStyle(
                        fontSize: width * 0.065, fontWeight: FontWeight.bold)),
              ),
              // add story and options Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: height * 0.06,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(width * 0.018)),
                      child: Center(
                        child: Text(
                          'Add to Story',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.045),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: width * 0.035),
                    height: height * 0.06,
                    width: 45.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(width * 0.018)),
                    child: const Icon(Icons.more_horiz),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget accountDetailes(
    double width,
    double height,
  ) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.home, color: Colors.grey, size: width * 0.08),
            const SizedBox(width: 10.0),
            Text(
              'Lives in Cairo',
              style: TextStyle(fontSize: width * 0.045),
            )
          ],
        ),
        const SizedBox(height: 15.0),
        Row(
          children: <Widget>[
            Icon(Icons.location_on, color: Colors.grey, size: width * 0.08),
            const SizedBox(width: 10.0),
            Text('From Cairo', style: TextStyle(fontSize: width * 0.045))
          ],
        ),
        const SizedBox(height: 15.0),
        Row(
          children: <Widget>[
            Icon(Icons.more_horiz, color: Colors.grey, size: width * 0.08),
            const SizedBox(width: 10.0),
            Text('See more about you',
                style: TextStyle(fontSize: width * 0.045))
          ],
        ),
        const SizedBox(height: 15.0),
        Container(
          height: height * 0.06,
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent.withOpacity(0.25),
            borderRadius: BorderRadius.circular(width * 0.018),
          ),
          child: Center(
              child: Text('Edit Public Details',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.045))),
        ),
      ],
    );
  }

  Widget friendsTitleAndNumbers(double width, double height) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Friends',
                style: TextStyle(
                    fontSize: width * 0.065, fontWeight: FontWeight.bold)),
            SizedBox(height: width * 0.04),
            Text('5000 friends',
                style:
                    TextStyle(fontSize: width * 0.04, color: Colors.grey[800])),
          ],
        ),
        Text('Find Friends',
            style: TextStyle(fontSize: width * 0.04, color: Colors.blue)),
      ],
    );
  }

  Widget friendwindow(double width, double height,
      {required String name, required String image}) {
    return SizedBox(
      width: (width / 3) - 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: width / 3 - 20,
            width: width / 3 - 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imagePath(image),
                ),
              ),
              borderRadius: BorderRadius.circular(width * 0.018),
            ),
          ),
          SizedBox(height: width * 0.02),
          Text(
            name,
            overflow: TextOverflow.fade,
            maxLines: 2,
            style:
                TextStyle(fontSize: width * 0.043, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
