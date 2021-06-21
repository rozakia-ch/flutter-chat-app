import 'package:chat_app/models/chat_message.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class VideoMessage extends StatelessWidget {
  const VideoMessage({Key? key, required this.message}) : super(key: key);
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset("assets/images/Video Place Here.png"),
            ),
            Container(
              height: 25.0,
              width: 25.0,
              decoration: BoxDecoration(
                color: style.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.play_arrow,
                size: 16.0,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
