import 'package:bloc/bloc.dart';
import 'package:chat_app/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';

part 'google_sign_in_state.dart';

class GoogleSignInCubit extends Cubit<GoogleSignInState> {
  GoogleSignInCubit() : super(GoogleSignInInitial());
  final AuthRepository _authRepository = AuthRepository();
  void signInWithGoogle() async {
    try {
      await _authRepository.signInWithGoogle();
      emit(GoogleSignInSuccess());
    } catch (exception) {
      emit(GoogleSignFailure());
    }
  }
}
