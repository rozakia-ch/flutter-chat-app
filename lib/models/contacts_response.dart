import 'package:chat_app/models/contacts.dart';

class ContactsResponse {
  List<Contact>? data;
  ContactsResponse({this.data});
  ContactsResponse.fromJson(json) {
    if (json != null) {
      data = <Contact>[];
      json.forEach((v) => data!.add(new Contact.fromJson(v)));
    }
  }
}
