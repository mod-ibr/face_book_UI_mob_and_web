import 'package:face_book_clone/pages/faceBook_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return const MaterialApp(
      title: 'facebook',
      debugShowCheckedModeBanner: true,
      home: FaceBookHomePage(),
    );
  }
}
