import 'package:chat_app/models/chat_message.dart';
import 'package:chat_app/ui/themes/style.dart' as style;
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: style.defaultPadding * 0.75,
        vertical: style.defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: style.primaryColor.withOpacity(message.isSender ? 1 : 0.08),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(
        message.text,
        style: TextStyle(
          color: message.isSender ? Colors.white : Theme.of(context).textTheme.bodyText1!.color,
        ),
      ),
    );
  }
}
