import 'package:flutter/material.dart';


class LikesIcon extends StatelessWidget {
  const LikesIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration:const BoxDecoration(
        color: Color(0xFF1777F2),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.thumb_up,
        size: 10.0,
        color: Colors.white,
      ),
    );
  }
}
