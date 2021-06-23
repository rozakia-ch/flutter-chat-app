import 'package:chat_app/ui/pages/profile/components/info.dart';
import 'package:chat_app/ui/pages/profile/components/profile_pic.dart';
import 'package:chat_app/ui/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings_outlined),
            onPressed: () => Navigator.pushNamed(context, "/setting-page"),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: style.defaultPadding),
        child: Column(
          children: [
            ProfilePic(image: "assets/images/user_2.png"),
            Text(
              "Annette Black",
              style: Theme.of(context).textTheme.headline6,
            ),
            Divider(height: style.defaultPadding * 2),
            Info(
              infoKey: "User ID",
              info: "@annette.me",
            ),
            Info(
              infoKey: "Location",
              info: "New York, NYC",
            ),
            Info(
              infoKey: "Phone",
              info: "(239) 555-0108",
            ),
            Info(
              infoKey: "Email Address",
              info: "demo@mail.com",
            ),
            SizedBox(height: style.defaultPadding),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 120,
                child: PrimaryButton(
                  padding: EdgeInsets.all(5),
                  text: "Edit Profile",
                  press: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
