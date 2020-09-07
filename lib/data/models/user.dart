import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(nullable: false, createToJson: false, createFactory: true)
class User {
  User({this.results, this.info});

  Info info;
  List<Results> results;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@JsonSerializable(nullable: false, createToJson: false, createFactory: true)
class Results {
  Results(
      {this.gender,
      this.name,
      this.location,
      this.email,
      this.login,
      this.dob,
      this.registered,
      this.phone,
      this.cell,
      this.id,
      this.picture,
      this.nat});

  String cell;
  Dob dob;
  String email;
  String gender;
  Id id;
  Location location;
  Login login;
  Name name;
  String nat;
  String phone;
  Picture picture;
  Dob registered;
  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

@JsonSerializable(nullable: false, createToJson: false, createFactory: true)
class Name {
  Name({this.title, this.first, this.last});

  String first;
  String last;
  String title;
  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@JsonSerializable(nullable: false, createToJson: false, createFactory: true)
class Location {
  Location(
      {this.street,
      this.city,
      this.state,
      this.country,
      this.postcode,
      this.coordinates,
      this.timezone});

  String city;
  Coordinates coordinates;
  String country;
  int postcode;
  String state;
  Street street;
  Timezone timezone;
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@JsonSerializable(nullable: false, createToJson: false, createFactory: true)
class Street {
  Street({this.number, this.name});

  String name;
  int number;
  factory Street.fromJson(Map<String, dynamic> json) => _$StreetFromJson(json);
}

@JsonSerializable(nullable: false, createToJson: false, createFactory: true)
class Coordinates {
  Coordinates({this.latitude, this.longitude});

  String latitude;
  String longitude;
  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}

@JsonSerializable(nullable: false, createToJson: false, createFactory: true)
class Timezone {
  Timezone({this.offset, this.description});

  String description;
  String offset;
  factory Timezone.fromJson(Map<String, dynamic> json) =>
      _$TimezoneFromJson(json);
}

@JsonSerializable(nullable: false, createToJson: false, createFactory: true)
class Login {
  Login(
      {this.uuid,
      this.username,
      this.password,
      this.salt,
      this.md5,
      this.sha1,
      this.sha256});

  String md5;
  String password;
  String salt;
  String sha1;
  String sha256;
  String username;
  String uuid;
  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}

@JsonSerializable(nullable: false, createToJson: false, createFactory: true)
class Dob {
  Dob({this.date, this.age});

  int age;
  String date;
  factory Dob.fromJson(Map<String, dynamic> json) => _$DobFromJson(json);
}

@JsonSerializable(nullable: false, createToJson: false, createFactory: true)
class Id {
  Id({this.name, this.value});

  String name;
  String value;
  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);
}

@JsonSerializable(nullable: false, createToJson: false, createFactory: true)
class Picture {
  Picture({this.large, this.medium, this.thumbnail});

  String large;
  String medium;
  String thumbnail;
  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);
}

@JsonSerializable(nullable: false, createToJson: false, createFactory: true)
class Info {
  Info({this.seed, this.results, this.page, this.version});

  int page;
  int results;
  String seed;
  String version;
  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
