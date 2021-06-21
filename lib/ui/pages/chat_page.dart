import 'package:chat_app/constants/contants.dart';
import 'package:chat_app/ui/widgets/app_drawer.dart';
import 'package:chat_app/ui/widgets/chat_item.dart';
import 'package:chat_app/ui/widgets/fill_outline_button.dart';
import 'package:chat_app/ui/widgets/media_query_container.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MediaQueryContainer(
      child: Scaffold(
        appBar: buildAppBar(),
        endDrawer: AppDrawer(),
        bottomNavigationBar: buildBottomNavigationBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: style.primaryColor,
          child: Icon(Icons.message, color: Colors.white),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: style.defaultPadding)
                    .copyWith(bottom: style.defaultPadding),
                color: style.primaryColor,
                child: Row(
                  children: [
                    FillOutlineButton(
                      onPressed: () {},
                      text: "Recent Messages",
                    ),
                    SizedBox(width: style.defaultPadding),
                    FillOutlineButton(
                      onPressed: () {},
                      text: "Active",
                      isFilled: false,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: Constants.chatsData.length,
                  itemBuilder: (context, index) => ChatItem(
                    chat: Constants.chatsData[index],
                    onPressed: () => Navigator.pushNamed(context, "/message-page"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text("Chats"),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        // IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.more_vert),
        // )
      ],
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage("assets/images/user_2.png"),
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
