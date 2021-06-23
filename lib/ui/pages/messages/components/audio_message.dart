import 'package:chat_app/models/chat_message.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class AudioMessage extends StatelessWidget {
  const AudioMessage({Key? key, required this.message}) : super(key: key);
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: EdgeInsets.symmetric(
        horizontal: style.defaultPadding * 0.75,
        vertical: style.defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: style.primaryColor.withOpacity(message.isSender ? 1 : 0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(Icons.play_arrow, color: message.isSender ? Colors.white : style.primaryColor),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: style.defaultPadding / 2),
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2.0,
                    color: message.isSender ? Colors.white : style.primaryColor.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                        color: message.isSender ? Colors.white : style.primaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "0.37",
            style: TextStyle(fontSize: 12, color: message.isSender ? Colors.white : null),
          ),
        ],
      ),
    );
  }
}
