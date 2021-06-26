class Contact {
  String? uid;
  String? email;
  String? name;
  String? photoUrl;

  Contact({this.uid, this.email, this.name, this.photoUrl});

  Contact.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    email = json['email'];
    name = json['name'];
    photoUrl = json['photo_url'];
  }
}
