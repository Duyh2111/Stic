// class MyData {
//   late String previous;
//   late String next;
//   late List<Results> results = [];

//   factory MyData.fromJson(Map<String, dynamic> json) {
//     previous = json['previous'];
//     next = json['next'];
//     if (json['results'] != null) {
//       List<int> results = List.filled(1, 0, growable: true); // [0]
//       json['results'].forEach((v) {
//         results.add(new Results.fromJson(v));
//       });
//     }
//   }
// }

// class Results {
//   late String firstName;
//   late String lastName;
//   late String email;
//   late String phone;
//   late bool verified;

//   Results.fromJson(Map<String, dynamic> json) {
//     firstName = json['first_name'];
//     lastName = json['last_name'];
//     email = json['email'];
//     phone = json['phone'];
//     verified = json['verified'];
//   }
// }

class Results {
  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      phone: json['phone'],
      verified: json['verified']);
  }

  Results({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.verified,
  });
  String firstName;
  String lastName;
  String email;
  String phone;
  bool verified;
  late String previous;
  late String next;
  late List<Results> results = [];
}
