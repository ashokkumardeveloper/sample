import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class DataModel {
  String? id;
  String? name;
  String? address;
  String? age;
  DataModel({
    this.id,
    this.name,
    this.address,
    this.age,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
      'age': age,
    };
  }

  factory DataModel.fromMap(DocumentSnapshot map) {
    return DataModel(
        id: map.id,
        name: map['name'],
        address: map['address'],
        age: map['age']);
  }
}
