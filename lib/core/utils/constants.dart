import 'package:flutter/material.dart';

const String _imagePath = 'assets/images/';
String imagePath(String image) {
  return _imagePath + image.toString();
}

Color loadingImage = Colors.grey.withOpacity(0.5);
