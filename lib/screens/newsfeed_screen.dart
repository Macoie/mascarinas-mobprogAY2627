import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  // CHANGED: Store the details for all 10 posts in one list.
  static const posts = [
    (
      userName: 'Venti',
      postContent: 'Inom tayo Zhongli',
      date: 'October 11',
      numOfLikes: 2,
      profileImage: 'assets/images/ventipfpgoofy.jpg',
      postImage: null,
    ),
    (
      userName: 'Rex Lapis',
      postContent: 'As such I have no regrets in meeting you, friend.',
      date: 'December 2',
      numOfLikes: 0,
      profileImage: 'assets/images/zhonglipfp.png',
      postImage: 'assets/images/zhonglibday.jpeg',
    ),
    (
      userName: 'Amber',
      postContent: 'Gliding practice today! Meet me by the city gates.',
      date: 'December 3',
      numOfLikes: 12,
      profileImage: 'assets/images/profile_amber.jpg',
      postImage: null,
    ),
    (
      userName: 'Kaeya',
      postContent: 'Quiet patrol tonight. Even the slimes took the evening off.',
      date: 'December 4',
      numOfLikes: 8,
      profileImage: 'assets/images/profile_kaeya.jpg',
      postImage: null,
    ),
    (
      userName: 'Lisa',
      postContent: 'Someone returned a library book with a flower inside.',
      date: 'December 5',
      numOfLikes: 15,
      profileImage: 'assets/images/profile_lisa.jpg',
      postImage: null,
    ),
    (
      userName: 'Xiangling',
      postContent: 'Guoba ate the first batch. I need a new taste tester!',
      date: 'December 6',
      numOfLikes: 24,
      profileImage: 'assets/images/profile_xiangling.jpg',
      postImage: null,
    ),
    (
      userName: 'Xiao',
      postContent: 'The view from Wangshu Inn is peaceful tonight.',
      date: 'December 7',
      numOfLikes: 18,
      profileImage: null,
      postImage: null,
    ),
    (
      userName: 'Hu Tao',
      postContent: 'Wrote a poem on my walk. Now I need a rhyme for “ghost.”',
      date: 'December 8',
      numOfLikes: 11,
      profileImage: null,
      postImage: null,
    ),
    (
      userName: 'Beidou',
      postContent: 'The Alcor is back in port. Who wants to hear the story?',
      date: 'December 9',
      numOfLikes: 32,
      profileImage: 'assets/images/profile_beidou.jpg',
      postImage: null,
    ),
    (
      userName: 'Paimon',
      postContent: 'Emergency meeting! Who ate Paimon’s emergency snacks?',
      date: 'December 10',
      numOfLikes: 7,
      profileImage: 'assets/images/profile_paimon.jpg',
      postImage: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // CHANGED: Build each card using the values for that post.
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];

        return NewsFeedCard(
          userName: post.userName,
          postContent: post.postContent,
          date: post.date,
          numOfLikes: post.numOfLikes,
          profileImage: post.profileImage,
          postImage: post.postImage,
        );
      },
    );
  }
}