// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    results: (json['results'] as List)
        .map((e) => Results.fromJson(e as Map<String, dynamic>))
        .toList(),
    info: Info.fromJson(json['info'] as Map<String, dynamic>),
  );
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return Results(
    gender: json['gender'] as String,
    name: Name.fromJson(json['name'] as Map<String, dynamic>),
    location: Location.fromJson(json['location'] as Map<String, dynamic>),
    email: json['email'] as String,
    login: Login.fromJson(json['login'] as Map<String, dynamic>),
    dob: Dob.fromJson(json['dob'] as Map<String, dynamic>),
    registered: Dob.fromJson(json['registered'] as Map<String, dynamic>),
    phone: json['phone'] as String,
    cell: json['cell'] as String,
    id: Id.fromJson(json['id'] as Map<String, dynamic>),
    picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
    nat: json['nat'] as String,
  );
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return Name(
    title: json['title'] as String,
    first: json['first'] as String,
    last: json['last'] as String,
  );
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    street: Street.fromJson(json['street'] as Map<String, dynamic>),
    city: json['city'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
    postcode: json['postcode'],
    coordinates:
        Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
    timezone: Timezone.fromJson(json['timezone'] as Map<String, dynamic>),
  );
}

Street _$StreetFromJson(Map<String, dynamic> json) {
  return Street(
    number: json['number'] as int,
    name: json['name'] as String,
  );
}

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return Coordinates(
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
  );
}

Timezone _$TimezoneFromJson(Map<String, dynamic> json) {
  return Timezone(
    offset: json['offset'] as String,
    description: json['description'] as String,
  );
}

Login _$LoginFromJson(Map<String, dynamic> json) {
  return Login(
    uuid: json['uuid'] as String,
    username: json['username'] as String,
    password: json['password'] as String,
    salt: json['salt'] as String,
    md5: json['md5'] as String,
    sha1: json['sha1'] as String,
    sha256: json['sha256'] as String,
  );
}

Dob _$DobFromJson(Map<String, dynamic> json) {
  return Dob(
    date: json['date'] as String,
    age: json['age'] as int,
  );
}

Id _$IdFromJson(Map<String, dynamic> json) {
  return Id(
    name: json['name'] as String,
    value: json['value'] as String,
  );
}

Picture _$PictureFromJson(Map<String, dynamic> json) {
  return Picture(
    large: json['large'] as String,
    medium: json['medium'] as String,
    thumbnail: json['thumbnail'] as String,
  );
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return Info(
    seed: json['seed'] as String,
    results: json['results'] as int,
    page: json['page'] as int,
    version: json['version'] as String,
  );
}
