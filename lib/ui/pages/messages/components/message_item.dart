import 'package:chat_app/enum/chat_message_type.dart';
import 'package:chat_app/models/chat_message.dart';
import 'package:chat_app/ui/pages/messages/components/audio_message.dart';
import 'package:chat_app/ui/pages/messages/components/message_status.dart';
import 'package:chat_app/ui/pages/messages/components/text_message.dart';
import 'package:chat_app/ui/pages/messages/components/video_message.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class MessageItem extends StatelessWidget {
  const MessageItem({
    Key? key,
    required this.message,
  }) : super(key: key);
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    Widget messageContent(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.video:
          return VideoMessage(message: message);
        default:
          return Container();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: style.defaultPadding),
      child: Row(
        mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            SizedBox(width: style.defaultPadding / 2)
          ],
          messageContent(message),
          if (message.isSender) MessageStatus(messageStatus: message.messageStatus),
        ],
      ),
    );
  }
}
