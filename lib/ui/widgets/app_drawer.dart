import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _createHeader(),
          _createDrawerItem(
            icon: Icons.contacts,
            text: 'Contacts',
            onTap: () {},
          ),
          _createDrawerItem(
            icon: Icons.event,
            text: 'Events',
            onTap: () {},
          ),
          _createDrawerItem(
            icon: Icons.note,
            text: 'Notes',
            onTap: () {},
          ),
          ListTile(
            title: Text('Version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: style.primaryColor,
        // image: DecorationImage(
        //   fit: BoxFit.fill,
        //   image: AssetImage('assets/images/user.png'),
        // ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text(
              "Chats App",
              style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem({
    required IconData icon,
    required String text,
    required GestureTapCallback onTap,
  }) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
