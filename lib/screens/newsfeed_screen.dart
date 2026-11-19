import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Venti',
          postContent: 'Inom tayo Zhongli',
          numOfLikes: 2,
          date: 'October 11',
          profileImage: 'assets/images/ventipfpgoofy.jpg',  
        ),
        NewsFeedCard(
          userName: 'Rex Lapis',
          postContent:
              'As such I have no regrets in meeting you, friend.',
          numOfLikes: 0,
          postImage: 'assets/images/zhonglibday.jpeg',
          profileImage: 'assets/images/zhonglipfp.png',
          date: 'December 2',
        ),
      ],
    );
  }
}

