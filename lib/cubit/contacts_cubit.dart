import 'package:bloc/bloc.dart';
import 'package:chat_app/models/contacts_response.dart';
import 'package:chat_app/repositories/contacts_repository.dart';
import 'package:equatable/equatable.dart';

part 'contacts_state.dart';

class ContactsCubit extends Cubit<ContactsState> {
  ContactsCubit() : super(ContactsInitial()) {
    contactsList();
  }
  final ContactsRepository _contactsRepository = ContactsRepository();
  void contactsList() async {
    try {
      ContactsResponse response = await _contactsRepository.getAllUser();
      emit(ContactsLoaded(contacts: response));
    } catch (exception) {
      print(exception);
    }
  }
}
