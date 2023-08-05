/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class TruckDriver extends _i1.SerializableEntity {
  TruckDriver({
    this.id,
    required this.truckId,
    required this.driverId,
    required this.truckStatus,
    required this.modifiedBy,
    required this.createdDate,
    required this.modifiedDate,
  });

  factory TruckDriver.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TruckDriver(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      truckId:
          serializationManager.deserialize<int>(jsonSerialization['truckId']),
      driverId:
          serializationManager.deserialize<int>(jsonSerialization['driverId']),
      truckStatus: serializationManager
          .deserialize<String>(jsonSerialization['truckStatus']),
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

  int truckId;

  int driverId;

  String truckStatus;

  int modifiedBy;

  DateTime createdDate;

  DateTime modifiedDate;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'truckId': truckId,
      'driverId': driverId,
      'truckStatus': truckStatus,
      'modifiedBy': modifiedBy,
      'createdDate': createdDate,
      'modifiedDate': modifiedDate,
    };
  }
}
