import 'package:chat_app/models/contacts.dart';
import 'package:chat_app/ui/widgets/circle_avatar_with_active_indicator.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class ContactItem extends StatelessWidget {
  const ContactItem({
    Key? key,
    required this.isActive,
    required this.press,
    required this.contact,
  }) : super(key: key);

  final Contact contact;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: style.defaultPadding,
        vertical: style.defaultPadding / 2,
      ),
      onTap: () => Navigator.pushNamed(context, "/message-page"),
      leading: CircleAvatarWithActiveIndicator(
        image: contact.photoUrl,
        isActive: isActive,
        radius: 28,
      ),
      title: Text(contact.name!),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: style.defaultPadding / 2),
        child: Text(
          contact.email!,
          style: TextStyle(
            color:
                Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
          ),
        ),
      ),
    );
  }
}
