# mascarinas_mobprog

A new Flutter project.

## Laboratory Discussion

During this laboratory activity, I learned how to create and configure a Flutter project using Visual Studio Code. I started by creating a new Flutter project using the Empty Application template and followed the required naming conventions.

I also learned how to select a device or emulator to run and test my Flutter application. One of the challenges I encountered was configuring the Flutter development environment and making sure that the necessary tools and dependencies were properly installed.

The problems I encountered were complicated, and they required searching for solutions to fix them.

## Lab Activity 1 – Newsfeed Enhancements

1. Optional post images

I added an optional `postImage` parameter to `NewsFeedCard` in `newsfeed_card.dart`. I used `if (postImage != null)` to check whether the post included an image path. For Rex Lapis’s post, I provided the path to the fireworks artwork, and `Image.asset()` displayed it below his caption. For Venti’s post, I left out `postImage`, so the Like and Comment buttons appeared directly below his message. This allowed me to use the same card layout for both posts.

2. Profile pictures

I added a separate `profileImage` parameter and used `CircleAvatar` to display each character’s portrait beside their name. This allowed Venti to have a profile picture even though his post was text-only. I stored the pictures in `assets/images/` and registered the folder in `pubspec.yaml` so Flutter could load them.

3. Like and Comment buttons

I created a reusable `PostActions` widget in `post_actions.dart`. Each post kept track of its own likes and comments. Tapping Like added one to the post’s count, and tapping it again returned the count to its starting value. Tapping Comment opened a text field, and each submitted comment appeared in a rounded bubble under the selected post.

