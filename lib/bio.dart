import 'package:firebase_database/firebase_database.dart';

class Bio {
  String key;
  String name;
  String dob;
  String country;
  String city;

  Bio(this.name, this.dob, this.country, this.city);

  Bio.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key,
        name = snapshot.value['name'],
        dob = snapshot.value['dob'],
        country = snapshot.value['country'],
        city = snapshot.value['city'];

  toJoson() {
    return {
      'name': name,
      'dob': dob,
      'country': country,
      'city': city,
    };
  }
}
