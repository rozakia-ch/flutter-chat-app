import 'package:chat_app/models/contacts_response.dart';
import 'package:dio/dio.dart';

class ContactsRepository {
  Future getAllUser() async {
    var dio = Dio();
    Response response = await dio.get('https://django-fire-api.herokuapp.com');
    return ContactsResponse.fromJson(response.data);
  }
}
