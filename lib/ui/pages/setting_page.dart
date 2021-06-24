import 'package:chat_app/cubit/auth_cubit.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailure)
          Navigator.pushNamedAndRemoveUntil(context, "/signin-or-signup-page", (route) => false);
      },
      child: Scaffold(
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
            Divider(),
            ListTile(
              onTap: () => BlocProvider.of<AuthCubit>(context).authLoggedOut(),
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              title: Text(
                "Sign Out",
                style: TextStyle(color: Colors.red),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text('Version 1.0.0'),
            ),
          ],
        ),
      ),
    );
  }
}
