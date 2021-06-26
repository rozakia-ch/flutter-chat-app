import 'package:animations/animations.dart';
import 'package:chat_app/cubit/contacts_cubit.dart';
import 'package:chat_app/ui/pages/calls/calls_history_page.dart';
import 'package:chat_app/ui/pages/chats/chats_page.dart';
import 'package:chat_app/ui/pages/contacts/contacts_page.dart';
import 'package:chat_app/ui/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;
  final List<Widget> pageList = [
    ChatsPage(),
    ContactsPage(),
    CallsHistoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        duration: Duration(milliseconds: 1000),
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
            FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: BlocProvider(
          create: (context) => ContactsCubit(),
          child: IndexedStack(
            key: ValueKey<int>(pageIndex),
            children: pageList,
            index: pageIndex,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        onTap: (value) => setState(() => pageIndex = value),
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
      ),
    );
  }
}
