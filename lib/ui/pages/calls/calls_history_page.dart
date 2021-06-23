import 'package:chat_app/constants/contants.dart';
import 'package:flutter/material.dart';
import 'call_history_item.dart';

class CallsHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Calls"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            // For demo
            ...List.generate(
              Constants.demoContactsImage.length,
              (index) => CallHistoryItem(
                name: "Darlene Robert",
                image: Constants.demoContactsImage[index],
                time: "3m ago",
                isActive: index.isEven,
                isOutgoingCall: index.isOdd,
                isVideoCall: index.isEven,
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
