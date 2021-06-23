import 'package:chat_app/constants/contants.dart';
import 'package:chat_app/ui/pages/chats/chat_item.dart';
import 'package:chat_app/ui/widgets/media_query_container.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return MediaQueryContainer(
      child: Scaffold(
        appBar: buildAppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: style.primaryColor,
          child: Icon(Icons.message, color: Colors.white),
        ),
        body: SafeArea(
          // child: Column(
          //   children: [
          //     Container(
          //       padding: EdgeInsets.symmetric(horizontal: style.defaultPadding)
          //           .copyWith(bottom: style.defaultPadding),
          //       color: style.primaryColor,
          //       child: Row(
          //         children: [
          //           FillOutlineButton(
          //             onPressed: () {},
          //             text: "Recent Messages",
          //           ),
          //           SizedBox(width: style.defaultPadding),
          //           FillOutlineButton(
          //             onPressed: () {},
          //             text: "Active",
          //             isFilled: false,
          //           ),
          //         ],
          //       ),
          //     ),
          //     Expanded(
          child: ListView.builder(
            itemCount: Constants.chatsData.length,
            itemBuilder: (context, index) => ChatItem(
              chat: Constants.chatsData[index],
              onPressed: () => Navigator.pushNamed(context, "/message-page"),
            ),
          ),
          //     ),
          //   ],
          // ),
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
}
