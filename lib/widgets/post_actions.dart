import 'package:flutter/material.dart';
import '../constants.dart';

class PostActions extends StatefulWidget {
  final int initialLikes;

  const PostActions({
    super.key,
    required this.initialLikes,
  });

  @override
  State<PostActions> createState() => _PostActionsState();
}

class _PostActionsState extends State<PostActions> {
  bool isLiked = false;
  bool showCommentBox = false;
  final comments = <String>[];
  final controller = TextEditingController();

  void addComment() {
    final text = controller.text.trim();
    if (text.isEmpty) return;

    setState(() => comments.add(text));
    controller.clear();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final likes = widget.initialLikes + (isLiked ? 1 : 0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () => setState(() => isLiked = !isLiked),
              icon: Icon(
                isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
              ),
              label: Text('$likes'),
              style: TextButton.styleFrom(
                foregroundColor: isLiked ? FB_PRIMARY : FB_DARK_PRIMARY,
              ),
            ),
            TextButton.icon(
              onPressed: () {
                setState(() => showCommentBox = !showCommentBox);
              },
              icon: const Icon(Icons.chat_bubble_outline),
              label: const Text('Comment'),
              style: TextButton.styleFrom(
                foregroundColor: FB_DARK_PRIMARY,
              ),
            ),
            TextButton.icon(
              onPressed: null,
              icon: const Icon(Icons.redo),
              label: const Text('Share'),
            ),
          ],
        ),

        if (showCommentBox || comments.isNotEmpty)
          const Divider(height: 12, color: Color(0xFFDFDFE5)),

        // CHANGED 1: Each posted comment gets an avatar and a rounded bubble.
        for (final comment in comments)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xFFDBEAFE),
                  child: Icon(Icons.person, size: 19, color: FB_DARK_PRIMARY),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEBEDF2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'You',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF202124),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          comment,
                          style: const TextStyle(
                            fontSize: 14,
                            height: 1.3,
                            color: Color(0xFF303238),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

        // CHANGED 2: A rounded input sits below the posted comments.
        if (showCommentBox)
          Padding(
            padding: const EdgeInsets.only(top: 6, bottom: 4),
            child: TextField(
              controller: controller,
              autofocus: true,
              textInputAction: TextInputAction.send,
              onSubmitted: (_) => addComment(),
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                hintText: 'Write a comment...',
                hintStyle: const TextStyle(color: Color(0xFF676B73)),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(color: Color(0xFFD7DAE0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(color: FB_PRIMARY),
                ),
                suffixIcon: IconButton(
                  onPressed: addComment,
                  tooltip: 'Post comment',
                  icon: const Icon(
                    Icons.send_rounded,
                    size: 20,
                    color: FB_PRIMARY,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}