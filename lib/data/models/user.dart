import 'dart:convert';

class UserAccount {
  String? id;
  String? firsname;
  String? lastname;
  String? email;
  String? phone;
  String? genre;
  String? image;
  final String? token;
  UserAccount({
    this.id,
    this.firsname,
    this.lastname,
    this.email,
    this.phone,
    this.image,
    this.genre,
    this.token,
  });

  UserAccount copyWith({
    String? id,
    String? firsname,
    String? lastname,
    String? email,
    String? phone,
    String? image,
    String? genre,
    String? token,
  }) {
    return UserAccount(
      id: id ?? this.id,
      firsname: firsname ?? this.firsname,
      lastname: lastname ?? this.lastname,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      image: image ?? this.image,
      genre: genre ?? this.genre,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firsname': firsname,
      'lastname': lastname,
      'email': email,
      'phone': phone,
      'image': image,
      'genre': genre,
      'token': token,
    };
  }

  factory UserAccount.fromMap(Map<String, dynamic> map) {
    return UserAccount(
      id: map['id'] != null ? map['id'] as String : null,
      firsname: map['firstName'] != null ? map['firstName'] as String : null,
      lastname: map['lastName'] != null ? map['lastName'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      phone: "", //map['phone'] != null ? map['phone'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      genre: map['gender'] != null ? map['gender'] as String : null,
      token: map['token'] != null ? map['token'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserAccount.fromJson(String source) =>
      UserAccount.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserAccount( id: $id, firsname: $firsname, lastname: $lastname, email: $email, phone: $phone, image: $image, genre: $genre, token: $token)';
  }
}

class Guest {
  static String login = "";
  static String pwd = "";
}
