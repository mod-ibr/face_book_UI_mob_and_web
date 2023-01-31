import 'package:face_book_clone/core/utils/constants.dart';

class UserNotification {
  final String image;
  final String content;
  final String time;

  UserNotification({
    required this.image,
    required this.content,
    required this.time,
  });
}

List<UserNotification> notifications = [
  UserNotification(
      image: imagePath('accountImages/hazem.jpg'),
      content: 'Dr Hazem Ghaith shared a new story',
      time: '2 hours ago'),
  UserNotification(
      image: imagePath('accountImages/mahmoud.jpg'),
      content: 'Eng Mostafa Ibrahim and 230 others liked your post',
      time: '35 min ago'),
  UserNotification(
      image: imagePath('accountImages/mohamed adel.jpg'),
      content: 'Eng Mohamed Adel has a new position',
      time: '5 min ago'),
  UserNotification(
      image: imagePath('accountImages/mostafa.jpg'),
      content: 'Eng Mostafa Ibrahim shared a new post',
      time: '11 hours ago'),
  UserNotification(
      image: imagePath('accountImages/sameh.jpg'),
      content: 'Sameh Mehanna shared a new post',
      time: '1 week ago'),
  UserNotification(
      image: imagePath('accountImages/hazem.jpg'),
      content: 'Dr Hazem Ghaith shared a new story',
      time: '2 hours ago'),
  UserNotification(
      image: imagePath('accountImages/mahmoud.jpg'),
      content: 'Eng Mostafa Ibrahim and 230 others liked your post',
      time: '35 min ago'),
  UserNotification(
      image: imagePath('accountImages/mohamed adel.jpg'),
      content: 'Eng Mohamed Adel has a new position',
      time: '5 min ago'),
  UserNotification(
      image: imagePath('accountImages/mostafa.jpg'),
      content: 'Eng Mostafa Ibrahim shared a new post',
      time: '11 hours ago'),
  UserNotification(
      image: imagePath('accountImages/sameh.jpg'),
      content: 'Sameh Mehanna shared a new post',
      time: '1 week ago'),
];
