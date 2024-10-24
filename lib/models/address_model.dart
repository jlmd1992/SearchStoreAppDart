import 'geolocation_model.dart';

class Address {
  final String city;
  final String street;
  final int number;
  final String zipcode;
  final Geolocation geolocation;

  Address({
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
    required this.geolocation,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    city: json["city"],
    street: json["street"],
    number: json["number"],
    zipcode: json["zipcode"],
    geolocation: Geolocation.fromJson(json["geolocation"]),
  );

  Map<String, dynamic> toJson() => {
    "city": city,
    "street": street,
    "number": number,
    "zipcode": zipcode,
    "geolocation": geolocation.toJson(),
  };
}