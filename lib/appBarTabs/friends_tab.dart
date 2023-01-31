import 'package:face_book_clone/models/friendRequests.dart';
import 'package:flutter/material.dart';

class FriendsTab extends StatelessWidget {
  const FriendsTab({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<Widget> allFriendRequestsWidget =
        List.generate(allFriendRequests.length, (index) {
      return friendRequest(
          height: height,
          width: width,
          confirmOrAdd: 'Confirm',
          accountImage: allFriendRequests[index].accountImage,
          accountName: allFriendRequests[index].name);
    });

    List<Widget> allSuggestedFriendsWidget =
        List.generate(allSuggestedFriends.length, (index) {
      return friendRequest(
          height: height,
          width: width,
          confirmOrAdd: 'Add',
          accountImage: allFriendRequests[index].accountImage,
          accountName: allFriendRequests[index].name);
    });

    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              titeleAndButtons(width, height),
              Divider(height: width * 0.1, thickness: 0.8),
              Row(
                children: <Widget>[
                  Text(
                    'Friend Requests',
                    style: TextStyle(
                        fontSize: width * 0.06, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: width * 0.03),
                  Text(
                    '8',
                    style: TextStyle(
                        fontSize: width * 0.06,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ],
              ),
              SizedBox(height: width * 0.03),
              ...allFriendRequestsWidget,
              Divider(height: width * 0.01, thickness: 0.8),
              SizedBox(height: width * 0.06),
              Text(
                'People You May Know',
                style: TextStyle(
                    fontSize: width * 0.06, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: width * 0.08),
              ...allSuggestedFriendsWidget
            ],
          )),
    );
  }

// First Section
  Widget titeleAndButtons(double width, double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Friends',
          style: TextStyle(fontSize: width * 0.08, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: width * 0.045),
        Row(
          children: <Widget>[
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                'Suggestions',
                style: TextStyle(
                    fontSize: width * 0.045, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: width * 0.045),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                'All Friends',
                style: TextStyle(
                    fontSize: width * 0.045, fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ],
    );
  }

// Second Section Friend Requests,suggested people
  Widget friendRequest(
      {required double width,
      required double height,
      required String accountImage,
      required String accountName,
      required String confirmOrAdd}) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(accountImage),
              radius: 40.0,
            ),
            SizedBox(width: width * 0.03),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  accountName,
                  style: TextStyle(
                      fontSize: width * 0.045, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: width * 0.04),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: (width - (width * 0.05 + 40 + width * 0.04)) / 3,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        confirmOrAdd,
                        style: TextStyle(
                            color: Colors.white, fontSize: width * 0.04),
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    Container(
                      alignment: Alignment.center,
                      width: (width - (width * 0.05 + 40 + width * 0.04)) / 3,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Text('Delete',
                          style: TextStyle(
                              color: Colors.black, fontSize: width * 0.04)),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(height: width * 0.08),
      ],
    );
  }
}
