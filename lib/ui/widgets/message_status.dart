import 'package:chat_app/enum/chat_message_status.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class MessageStatus extends StatelessWidget {
  const MessageStatus({Key? key, required this.messageStatus}) : super(key: key);
  final ChatMessageStatus messageStatus;
  @override
  Widget build(BuildContext context) {
    Color dotColor(ChatMessageStatus status) {
      switch (status) {
        case ChatMessageStatus.not_sent:
          return style.errorColor;
        case ChatMessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
        case ChatMessageStatus.viewed:
          return style.primaryColor;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: style.defaultPadding / 2),
      height: 12.0,
      width: 12.0,
      decoration: BoxDecoration(
        color: dotColor(messageStatus),
        shape: BoxShape.circle,
      ),
      child: Icon(
        messageStatus == ChatMessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8.0,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
