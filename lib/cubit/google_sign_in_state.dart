part of 'google_sign_in_cubit.dart';

abstract class GoogleSignInState extends Equatable {
  const GoogleSignInState();
}

class GoogleSignInInitial extends GoogleSignInState {
  @override
  List<Object> get props => [];
}

class GoogleSignFailure extends GoogleSignInState {
  @override
  List<Object> get props => [];
}

class GoogleSignInSuccess extends GoogleSignInState {
  @override
  List<Object> get props => [];
}
