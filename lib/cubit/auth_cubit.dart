import 'package:bloc/bloc.dart';
import 'package:chat_app/repositories/user_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final UserRepository _userRepository = UserRepository();
  void authCheck() async {
    final isSignedIn = await _userRepository.isSignedIn();
    if (isSignedIn) {
      final firebaseUser = await _userRepository.getUser();
      emit(AuthSuccess(user: firebaseUser));
    } else {
      emit(AuthFailure());
    }
  }

  void authLoggedIn() async {
    emit(AuthSuccess(user: await _userRepository.getUser()));
  }

  void authLoggedOut() async {
    _userRepository.signOut();
    emit(AuthFailure());
  }
}
