import 'package:chat_app/constants/contants.dart';
import 'package:chat_app/cubit/auth_cubit.dart';
import 'package:chat_app/ui/pages/profile/components/info.dart';
import 'package:chat_app/ui/pages/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: style.defaultPadding),
            child: Column(
              children: [
                ProfilePic(
                  image: state is AuthSuccess
                      ? state.user.photoURL!
                      : Constants.defaultImage,
                ),
                Text(
                  state is AuthSuccess ? state.user.displayName! : "-",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Divider(height: style.defaultPadding * 2),
                Info(
                  infoKey: "User ID",
                  info: state is AuthSuccess ? state.user.uid : "-",
                ),
                Info(
                  infoKey: "Location",
                  info: "New York, NYC",
                ),
                Info(
                  infoKey: "Email Address",
                  info: state is AuthSuccess ? state.user.email! : "-",
                ),
                SizedBox(height: style.defaultPadding),
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: SizedBox(
                //     width: 120,
                //     child: PrimaryButton(
                //       padding: EdgeInsets.all(5),
                //       text: "Edit Profile",
                //       press: () {},
                //     ),
                //   ),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
