import 'package:bloc/bloc.dart';
import 'package:chat_app/repositories/user_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'google_sign_in_state.dart';

class GoogleSignInCubit extends Cubit<GoogleSignInState> {
  GoogleSignInCubit() : super(GoogleSignInInitial());
  final UserRepository _userRepository = UserRepository();
  void signInWithGoogle() async {
    try {
      await _userRepository.signInWithGoogle();
      emit(GoogleSignInSuccess());
    } catch (exception) {
      emit(GoogleSignFailure());
    }
  }
}
