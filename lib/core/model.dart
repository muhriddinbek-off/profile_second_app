class UserModal {
  final String img;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String data;
  final String country;

  UserModal({
    required this.img,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.data,
    required this.country,
  });

  factory UserModal.fromJson(Map json) {
    return UserModal(
      img: json['results'][0]['picture']['medium'],
      firstName: json['results'][0]['name']['first'],
      lastName: json['results'][0]['name']['last'],
      email: json['results'][0]['email'],
      password: json['results'][0]['login']['password'],
      data: json['results'][0]['dob']['date'],
      country: json['results'][0]['location']['country'],
    );
  }

  Map toJson() {
    return {
      "medium": img,
      "first": firstName,
      "last": lastName,
      "email": email,
      "password": password,
      "data": data,
      "country": country,
    };
  }
}
