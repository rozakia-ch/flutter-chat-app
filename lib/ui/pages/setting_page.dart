import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                EasyDynamicThemeSwitch(),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text("Dark Mode"),
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text('Version 1.0.0'),
          ),
        ],
      ),
    );
  }
}
