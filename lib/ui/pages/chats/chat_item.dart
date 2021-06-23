import 'package:chat_app/models/chat.dart';
import 'package:chat_app/ui/widgets/circle_avatar_with_active_indicator.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key, required this.chat, required this.onPressed}) : super(key: key);
  final Chat chat;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: style.defaultPadding,
          vertical: style.defaultPadding * 0.75,
        ),
        child: Row(
          children: [
            CircleAvatarWithActiveIndicator(
              image: chat.image,
              isActive: chat.isActive,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: style.defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chat.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 5.0),
                    Opacity(
                      opacity: 0.64,
                      child: Text(chat.lastMessage, maxLines: 1, overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.64,
              child: Text(chat.time),
            ),
          ],
        ),
      ),
    );
  }
}
