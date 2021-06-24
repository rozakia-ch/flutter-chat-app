import 'package:chat_app/cubit/auth_cubit.dart';
import 'package:chat_app/cubit/google_sign_in_cubit.dart';
import 'package:chat_app/ui/widgets/media_query_container.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInOrSignUpPage extends StatelessWidget {
  const SignInOrSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQueryContainer(
      child: Scaffold(
        body: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess)
              Navigator.pushNamedAndRemoveUntil(context, "/main-page", (route) => false);
          },
          child: BlocProvider(
            create: (context) => GoogleSignInCubit(),
            child: BlocConsumer<GoogleSignInCubit, GoogleSignInState>(
              listener: (context, state) {
                if (state is GoogleSignInSuccess) BlocProvider.of<AuthCubit>(context).authLoggedIn();
              },
              builder: (context, state) {
                return SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: style.defaultPadding),
                    child: Column(
                      children: [
                        Spacer(flex: 2),
                        Image.asset(
                          Theme.of(context).brightness == Brightness.light
                              ? "assets/images/Logo_light.png"
                              : "assets/images/Logo_dark.png",
                          height: 146.0,
                        ),
                        Spacer(),
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                            backgroundColor: style.secondaryColor,
                            padding: EdgeInsets.all(style.defaultPadding * 0.75),
                            alignment: Alignment.center,
                          ),
                          onPressed: () => BlocProvider.of<GoogleSignInCubit>(context).signInWithGoogle(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/logo_google.png",
                                width: 24.0,
                              ),
                              SizedBox(width: style.defaultPadding / 2),
                              Text(
                                "Sign In",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Spacer(flex: 2),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
