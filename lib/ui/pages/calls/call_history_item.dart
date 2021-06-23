import 'package:chat_app/ui/widgets/circle_avatar_with_active_indicator.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class CallHistoryItem extends StatelessWidget {
  const CallHistoryItem({
    Key? key,
    required this.name,
    required this.time,
    required this.isActive,
    required this.isVideoCall,
    required this.isOutgoingCall,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String name, time, image;
  final bool isActive, isVideoCall, isOutgoingCall;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: style.defaultPadding,
        vertical: style.defaultPadding / 2,
      ),
      onTap: () {},
      leading: CircleAvatarWithActiveIndicator(
        image: image,
        isActive: isActive,
        radius: 28,
      ),
      title: Text(name),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: style.defaultPadding / 2),
        child: Row(
          children: [
            Icon(
              isOutgoingCall ? Icons.north_east : Icons.south_west,
              size: 16,
              color: isOutgoingCall ? Theme.of(context).primaryColor : style.errorColor,
            ),
            SizedBox(width: style.defaultPadding / 2),
            Text(
              time,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
              ),
            ),
          ],
        ),
      ),
      trailing: Icon(
        isVideoCall ? Icons.videocam : Icons.call,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
