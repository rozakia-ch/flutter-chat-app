import 'package:chat_app/constants/contants.dart';
import 'package:flutter/material.dart';
import 'contact_item.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("People"),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      body: ListView.builder(
        itemCount: Constants.demoContactsImage.length,
        itemBuilder: (context, index) => ContactItem(
          name: "Jenny Wilson",
          number: "(239) 555-0108",
          image: Constants.demoContactsImage[index],
          isActive: index.isEven, // for demo
          press: () {},
        ),
      ),
    );
  }
}
