import 'package:face_book_clone/core/utils/constants.dart';

class Post {
  final String profileImageUrl;
  final String username;
  final String time;
  final String content;
  final String sharedImage;
  final String likes;
  final String comments;
  final String shares;
  final bool isLiked;

  Post({
    required this.profileImageUrl,
    required this.username,
    required this.time,
    required this.content,
    required this.likes,
    required this.sharedImage,
    required this.comments,
    required this.shares,
    this.isLiked = false,
  });
}

List<Post> posts = [
  Post(
      profileImageUrl: imagePath('accountImages/mahmoud.jpg'),
      username: 'Mahmoud Ibrahim',
      time: '55m ago',
      content: 'New Youtube video about APIs with flutter😍😎',
      likes: '10k',
      sharedImage: '',
      comments: '232',
      shares: '3K'),
  Post(
      profileImageUrl: imagePath('accountImages/hazem.jpg'),
      username: 'Dr Hazem Ghaith',
      time: '2h',
      content:
          'Alhamdulillah \nOur paper titled "Tranexamic Acid for Patients with Aneurysmal Subarachnoid Hemorrhage: A Systematic Review and Meta-Analysis of 2991 Patients" has been published in the International Journal of Neuroscience',
      isLiked: true,
      sharedImage: imagePath('posts/hazem_paper.jpg'),
      likes: '633',
      comments: '240',
      shares: '30'),
  Post(
      profileImageUrl: imagePath('accountImages/mohamed adel.jpg'),
      username: 'Eng Mohamed Adel',
      time: '2w',
      content:
          'الحمدلله على ما آتانا من فضله♥️🙏🏼\nI’m happy to share that I’m starting a new position as Mobile Application Developer at AFFSQUARE! ❤',
      likes: '700',
      sharedImage: '',
      isLiked: true,
      comments: '320',
      shares: '50'),
  Post(
      profileImageUrl: imagePath('accountImages/mostafa.jpg'),
      username: 'Eng Mostafa Ibrahim',
      time: '5d',
      content: 'New Achievements💪💙',
      sharedImage: imagePath('posts/landscape.jpg'),
      likes: '1024',
      isLiked: true,
      comments: '512',
      shares: '128'),
  Post(
      profileImageUrl: imagePath('accountImages/sameh.jpg'),
      username: 'Sameh Mehanna',
      time: '1w',
      isLiked: true,
      sharedImage: imagePath('posts/sameh.jpg'),
      content: 'Egyptian Satellite Project Poster',
      likes: '233',
      comments: '6',
      shares: '4'),
];
