import 'package:chat_app/constants/contants.dart';
import 'package:chat_app/ui/pages/messages/components/message_item.dart';
import 'package:chat_app/ui/themes/style.dart' as style;
import 'package:chat_app/ui/widgets/media_query_container.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQueryContainer(
      child: Scaffold(
        appBar: buildAppBar(),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: style.defaultPadding),
                itemCount: Constants.demoChatMessages.length,
                itemBuilder: (context, index) => MessageItem(
                  message: Constants.demoChatMessages[index],
                ),
              ),
            ),
            buildChatInputField(context),
          ],
        ),
      ),
    );
  }

  Container buildChatInputField(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: style.defaultPadding,
        vertical: style.defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: style.shadowColor.withOpacity(0.08),
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(Icons.mic, color: style.primaryColor),
            SizedBox(width: style.defaultPadding),
            Expanded(
              child: Container(
                height: 50.0,
                padding: EdgeInsets.symmetric(
                  horizontal: style.defaultPadding * 0.75,
                ),
                decoration: BoxDecoration(
                  color: style.primaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
                    ),
                    SizedBox(width: style.defaultPadding / 4),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(width: style.defaultPadding / 4),
                    Icon(
                      Icons.attach_file,
                      color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
                    ),
                    SizedBox(width: style.defaultPadding / 4),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_2.png"),
          ),
          SizedBox(width: style.defaultPadding * 0.75),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kristian Watson Kristian Watson",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16.0),
                ),
                Text("Active 3m ago", style: TextStyle(fontSize: 12.0)),
              ],
            ),
          )
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.local_phone)),
        IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
        SizedBox(width: style.defaultPadding / 2),
      ],
    );
  }
}
