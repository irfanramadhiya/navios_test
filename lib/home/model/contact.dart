class Contact {
  String id;
  final String name;
  final String email;
  final String phone;

  Contact(
      {this.id = '',
      required this.name,
      required this.email,
      required this.phone});

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'email': email, 'phone': phone};

  static Contact fromJson(Map<String, dynamic> json) => Contact(
      id: json['id'],
      name: json["name"],
      email: json['email'],
      phone: json['phone']);
}
