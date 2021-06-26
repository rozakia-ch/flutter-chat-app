part of 'contacts_cubit.dart';

abstract class ContactsState extends Equatable {
  const ContactsState();
}

class ContactsInitial extends ContactsState {
  @override
  List<Object> get props => [];
}

class ContactsLoaded extends ContactsState {
  ContactsResponse contacts;
  ContactsLoaded({required this.contacts});
  @override
  List<Object> get props => [contacts];
}
