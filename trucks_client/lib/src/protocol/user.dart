/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class User extends _i1.SerializableEntity {
  User({
    this.id,
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.nidaNumber,
    required this.dateOfBirth,
    required this.phone,
    required this.roleId,
    required this.gender,
    required this.status,
    required this.createdDate,
    required this.modifiedDate,
  });

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      firstName: serializationManager
          .deserialize<String>(jsonSerialization['firstName']),
      lastName: serializationManager
          .deserialize<String>(jsonSerialization['lastName']),
      nidaNumber: serializationManager
          .deserialize<String>(jsonSerialization['nidaNumber']),
      dateOfBirth: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateOfBirth']),
      phone: serializationManager.deserialize<int>(jsonSerialization['phone']),
      roleId:
          serializationManager.deserialize<int>(jsonSerialization['roleId']),
      gender:
          serializationManager.deserialize<String>(jsonSerialization['gender']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
      createdDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdDate']),
      modifiedDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['modifiedDate']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  String firstName;

  String lastName;

  String nidaNumber;

  DateTime dateOfBirth;

  int phone;

  int roleId;

  String gender;

  String status;

  DateTime createdDate;

  DateTime modifiedDate;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'firstName': firstName,
      'lastName': lastName,
      'nidaNumber': nidaNumber,
      'dateOfBirth': dateOfBirth,
      'phone': phone,
      'roleId': roleId,
      'gender': gender,
      'status': status,
      'createdDate': createdDate,
      'modifiedDate': modifiedDate,
    };
  }
}
