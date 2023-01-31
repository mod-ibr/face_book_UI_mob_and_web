import 'package:face_book_clone/models/user_notification.dart';
import 'package:flutter/material.dart';

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({super.key});

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
            Text(
              'Notifications',
              style: TextStyle(
                  fontSize: width * 0.07, fontWeight: FontWeight.bold),
            ),
            for (UserNotification notification in notifications)
              notificationWidget(width, height, notification: notification)
          ],
        ),
      ),
    );
  }

  notificationWidget(double width, double height,
      {required UserNotification notification}) {
    return SizedBox(
      height: width * 0.25,
      child: InkWell(
        onTap: () {},
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(notification.image),
              radius: width * 0.08,
            ),
            SizedBox(width: width * 0.05),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(notification.content,
                      maxLines: 2,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: width * 0.045,
                          fontWeight: FontWeight.bold)),
                  Text(notification.time,
                      style: TextStyle(
                          fontSize: width * 0.04, color: Colors.grey)),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          ],
        ),
      ),
    );
  }
}
