import 'package:face_book_clone/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20.0, 15, 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            menuAndAccountData(width, height),
            const Divider(
              height: 20.0,
              thickness: 2,
            ),
            // Start Of Cards
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  customCard(width, height, icon: Icons.group, title: 'Groups'),
                  SizedBox(width: width * 0.05),
                  customCard(width, height,
                      icon: Icons.shopping_basket, title: 'Marketplace'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  customCard(width, height,
                      icon: Icons.person, title: 'Friends'),
                  SizedBox(width: width * 0.05),
                  customCard(width, height,
                      icon: Icons.history, title: 'Memories'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  customCard(width, height, icon: Icons.flag, title: 'Pages'),
                  SizedBox(width: width * 0.05),
                  customCard(width, height,
                      icon: Icons.save_alt, title: 'Saved'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  customCard(width, height,
                      icon: FontAwesomeIcons.bagShopping, title: 'Jobs'),
                  SizedBox(width: width * 0.05),
                  customCard(width, height, icon: Icons.event, title: 'Events'),
                ],
              ),
            ),
            // End Of Cards
            rowbutton(width, height, title: 'Help & Support', icon: Icons.help),
            const Divider(),
            rowbutton(width, height,
                title: 'Settings & Privacy', icon: Icons.settings),
            const Divider(),
            rowbutton(width, height, title: 'Logout', icon: Icons.exit_to_app),
            const Divider(),
          ],
        ),
      ),
    );
  }

  Widget menuAndAccountData(double width, double height) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Menu',
          style: TextStyle(fontSize: width * 0.08, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: width * 0.05,
        ),
        Row(
          children: <Widget>[
            CircleAvatar(
              radius: width * 0.09,
              backgroundImage:
                  AssetImage(imagePath('accountImages/mahmoud.jpg')),
            ),
            SizedBox(width: width * 0.05),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Mahmoud Ibrahim',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.06)),
                SizedBox(height: width * 0.02),
                const Text(
                  'See your profile',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  customCard(double width, double height,
      {required String title, required IconData icon}) {
    return Expanded(
      child: Container(
        height: width * 0.23,
        padding: const EdgeInsets.only(left: 20.0),
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(width * 0.018),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(icon, color: Colors.blue, size: width * 0.1),
            SizedBox(height: width * 0.01),
            Text(
              title,
              style: TextStyle(
                  fontSize: width * 0.05, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  Widget rowbutton(double width, double height,
      {required String title, required IconData icon}) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: width,
        height: width * 0.15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(icon, size: 40.0, color: Colors.grey[700]),
                SizedBox(width: width * 0.05),
                Text(
                  title,
                  style: TextStyle(fontSize: width * 0.05),
                ),
              ],
            ),
            Icon(Icons.arrow_drop_down, size: width * 0.07),
          ],
        ),
      ),
    );
  }
}
