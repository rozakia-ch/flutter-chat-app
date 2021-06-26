import 'package:bloc/bloc.dart';
import 'package:chat_app/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final AuthRepository _authRepository = AuthRepository();
  void authCheck() async {
    final isSignedIn = await _authRepository.isSignedIn();
    if (isSignedIn) {
      final firebaseUser = await _authRepository.getUser();
      emit(AuthSuccess(user: firebaseUser));
    } else {
      emit(AuthFailure());
    }
  }

  void authLoggedIn() async {
    emit(AuthSuccess(user: await _authRepository.getUser()));
  }

  void authLoggedOut() async {
    _authRepository.signOut();
    emit(AuthFailure());
  }
}
