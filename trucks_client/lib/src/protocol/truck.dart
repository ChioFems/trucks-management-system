/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Truck extends _i1.SerializableEntity {
  Truck({
    this.id,
    required this.truckName,
    required this.truckModelId,
    required this.registrationNumber,
    required this.registrationDate,
    this.bodyTypeId,
    this.cargoTypeId,
    this.maxLoadingCapacity,
    required this.truckCc,
    this.defaultTruckLocation,
    this.fuelConsumptionPerKm,
    required this.status,
    required this.modifiedBy,
    required this.createdDate,
    required this.modifiedDate,
  });

  factory Truck.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Truck(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      truckName: serializationManager
          .deserialize<String>(jsonSerialization['truckName']),
      truckModelId: serializationManager
          .deserialize<int>(jsonSerialization['truckModelId']),
      registrationNumber: serializationManager
          .deserialize<String>(jsonSerialization['registrationNumber']),
      registrationDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['registrationDate']),
      bodyTypeId: serializationManager
          .deserialize<int?>(jsonSerialization['bodyTypeId']),
      cargoTypeId: serializationManager
          .deserialize<int?>(jsonSerialization['cargoTypeId']),
      maxLoadingCapacity: serializationManager
          .deserialize<int?>(jsonSerialization['maxLoadingCapacity']),
      truckCc:
          serializationManager.deserialize<int>(jsonSerialization['truckCc']),
      defaultTruckLocation: serializationManager
          .deserialize<String?>(jsonSerialization['defaultTruckLocation']),
      fuelConsumptionPerKm: serializationManager
          .deserialize<int?>(jsonSerialization['fuelConsumptionPerKm']),
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

  String truckName;

  int truckModelId;

  String registrationNumber;

  DateTime registrationDate;

  int? bodyTypeId;

  int? cargoTypeId;

  int? maxLoadingCapacity;

  int truckCc;

  String? defaultTruckLocation;

  int? fuelConsumptionPerKm;

  String status;

  int modifiedBy;

  DateTime createdDate;

  DateTime modifiedDate;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'truckName': truckName,
      'truckModelId': truckModelId,
      'registrationNumber': registrationNumber,
      'registrationDate': registrationDate,
      'bodyTypeId': bodyTypeId,
      'cargoTypeId': cargoTypeId,
      'maxLoadingCapacity': maxLoadingCapacity,
      'truckCc': truckCc,
      'defaultTruckLocation': defaultTruckLocation,
      'fuelConsumptionPerKm': fuelConsumptionPerKm,
      'status': status,
      'modifiedBy': modifiedBy,
      'createdDate': createdDate,
      'modifiedDate': modifiedDate,
    };
  }
}
