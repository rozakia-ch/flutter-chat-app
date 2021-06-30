import 'package:bloc/bloc.dart';
import 'package:chat_app/models/contacts_response.dart';
import 'package:chat_app/repositories/auth_repository.dart';
import 'package:chat_app/repositories/contacts_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'contacts_state.dart';

class ContactsCubit extends Cubit<ContactsState> {
  ContactsCubit() : super(ContactsInitial()) {
    contactsList();
  }
  final ContactsRepository _contactsRepository = ContactsRepository();
  final AuthRepository _authRepository = AuthRepository();
  void contactsList() async {
    try {
      User user = await _authRepository.getUser();
      ContactsResponse response =
          await _contactsRepository.getAllUser(user.email!);
      emit(ContactsLoaded(contacts: response));
    } catch (exception) {
      print(exception);
    }
  }
}
