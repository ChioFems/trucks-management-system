/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Driver extends _i1.SerializableEntity {
  Driver({
    this.id,
    required this.userId,
    required this.licenseNumber,
    required this.licenseExpiryDate,
    required this.status,
    required this.modifiedBy,
    required this.createdDate,
    required this.modifiedDate,
  });

  factory Driver.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Driver(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      licenseNumber: serializationManager
          .deserialize<int>(jsonSerialization['licenseNumber']),
      licenseExpiryDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['licenseExpiryDate']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
      modifiedBy: serializationManager
          .deserialize<int>(jsonSerialization['modifiedBy']),
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

  int licenseNumber;

  DateTime licenseExpiryDate;

  String status;

  int modifiedBy;

  DateTime createdDate;

  DateTime modifiedDate;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'licenseNumber': licenseNumber,
      'licenseExpiryDate': licenseExpiryDate,
      'status': status,
      'modifiedBy': modifiedBy,
      'createdDate': createdDate,
      'modifiedDate': modifiedDate,
    };
  }
}
