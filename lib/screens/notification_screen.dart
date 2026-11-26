import 'package:flutter/material.dart';
import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  // Each entry supplies the name, post, and description for one row.
  static const notifications = [
    (name: 'Venti', post: 'A new song', description: 'At Windrise'),
    (name: 'Rex Lapis', post: 'Lantern Rite', description: 'In Liyue Harbor'),
    (name: 'Amber', post: 'Gliding practice', description: 'Near the city gates'),
    (name: 'Kaeya', post: 'Evening patrol', description: 'In Mondstadt'),
    (name: 'Lisa', post: 'Reading list', description: 'At the library'),
    (name: 'Jean', post: 'Daily briefing', description: 'At headquarters'),
    (name: 'Xiangling', post: 'A new recipe', description: 'At Wanmin Restaurant'),
    (name: 'Xiao', post: 'Night watch', description: 'At Wangshu Inn'),
    (name: 'Hu Tao', post: 'A little poem', description: 'On Wuwang Hill'),
    (name: 'Ganyu', post: 'Morning walk', description: 'In Liyue'),
    (name: 'Beidou', post: 'Setting sail', description: 'Aboard the Alcor'),
    (name: 'Ningguang', post: 'Harbor view', description: 'From the Jade Chamber'),
    (name: 'Kazuha', post: 'Autumn leaves', description: 'Along the coast'),
    (name: 'Ayaka', post: 'Festival plans', description: 'In Inazuma'),
    (name: 'Yoimiya', post: 'Firework test', description: 'On the beach'),
    (name: 'Thoma', post: 'Lunch is ready', description: 'At the estate'),
    (name: 'Nahida', post: 'A curious flower', description: 'In Sumeru'),
    (name: 'Cyno', post: 'Card match', description: 'At the café'),
    (name: 'Collei', post: 'Forest patrol', description: 'In Avidya Forest'),
    (name: 'Paimon', post: 'Snack break', description: 'With the Traveler'),
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: ListView.separated(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final item = notifications[index];

          return notif.Notification(
            name: item.name,
            post: item.post,
            description: item.description,
          );
        },
        separatorBuilder: (context, index) => const Divider(height: 1),
      ),
    );
  }
}