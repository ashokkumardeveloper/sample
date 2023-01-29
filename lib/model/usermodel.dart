import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  String? id;
  String? name;
  int? age;
  List<dynamic>? educations;
  List<Address>? address;
  UserModel({
    this.id,
    this.name,
    this.age,
    this.educations,
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'age': age,
      'educations': educations,
      'address': List<dynamic>.from(address!.map((e) => e.toMap())).toList()
    };
  }

  factory UserModel.fromMap(DocumentSnapshot map) {
    return UserModel(
        id: map.id,
        name: map['name'],
        age: map['age'],
        educations: map['educations'] != null
            ? List<dynamic>.from((map['educations']))
            : [],
        address: map['address'] != null
            ? List<Address>.from(map["address"].map((e) => Address.fromMap(e)))
                .toList()
            : []);
  }
}

class Address {
  String? id;
  String? street;
  List<dynamic>? pincodes;
  Local? local;
  Address({
    this.id,
    this.street,
    this.pincodes,
    this.local,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'street': street,
      'pincodes': pincodes,
      'local': local?.toMap(),
    };
  }

  factory Address.fromMap(DocumentSnapshot map) {
    return Address(
      id: map['id'],
      street: map['street'],
      pincodes:
          map['pincodes'] != null ? List<dynamic>.from((map['pincodes'])) : [],
      local: map['local'] != null ? Local.fromMap(map['local']) : null,
    );
  }
}

class Local {
  String? id;
  String? localname;
  List<String>? cities;
  Local({
    this.id,
    this.localname,
    this.cities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'localname': localname,
      'cities': cities,
    };
  }

  factory Local.fromMap(DocumentSnapshot map) {
    return Local(
        id: map['id'],
        localname: map['localname'],
        cities: map['cities'] != null
            ? List<String>.from((map['cities'])).toList()
            : []);
  }
}
