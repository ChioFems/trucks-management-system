/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Truck extends _i1.TableRow {
  Truck({
    int? id,
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
  }) : super(id);

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

  static final t = TruckTable();

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
  String get tableName => 'trucks';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
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

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'truckName':
        truckName = value;
        return;
      case 'truckModelId':
        truckModelId = value;
        return;
      case 'registrationNumber':
        registrationNumber = value;
        return;
      case 'registrationDate':
        registrationDate = value;
        return;
      case 'bodyTypeId':
        bodyTypeId = value;
        return;
      case 'cargoTypeId':
        cargoTypeId = value;
        return;
      case 'maxLoadingCapacity':
        maxLoadingCapacity = value;
        return;
      case 'truckCc':
        truckCc = value;
        return;
      case 'defaultTruckLocation':
        defaultTruckLocation = value;
        return;
      case 'fuelConsumptionPerKm':
        fuelConsumptionPerKm = value;
        return;
      case 'status':
        status = value;
        return;
      case 'modifiedBy':
        modifiedBy = value;
        return;
      case 'createdDate':
        createdDate = value;
        return;
      case 'modifiedDate':
        modifiedDate = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Truck>> find(
    _i1.Session session, {
    TruckExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Truck>(
      where: where != null ? where(Truck.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Truck?> findSingleRow(
    _i1.Session session, {
    TruckExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Truck>(
      where: where != null ? where(Truck.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Truck?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Truck>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TruckExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Truck>(
      where: where(Truck.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Truck row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Truck row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Truck row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    TruckExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Truck>(
      where: where != null ? where(Truck.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TruckExpressionBuilder = _i1.Expression Function(TruckTable);

class TruckTable extends _i1.Table {
  TruckTable() : super(tableName: 'trucks');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final truckName = _i1.ColumnString('truckName');

  final truckModelId = _i1.ColumnInt('truckModelId');

  final registrationNumber = _i1.ColumnString('registrationNumber');

  final registrationDate = _i1.ColumnDateTime('registrationDate');

  final bodyTypeId = _i1.ColumnInt('bodyTypeId');

  final cargoTypeId = _i1.ColumnInt('cargoTypeId');

  final maxLoadingCapacity = _i1.ColumnInt('maxLoadingCapacity');

  final truckCc = _i1.ColumnInt('truckCc');

  final defaultTruckLocation = _i1.ColumnString('defaultTruckLocation');

  final fuelConsumptionPerKm = _i1.ColumnInt('fuelConsumptionPerKm');

  final status = _i1.ColumnString('status');

  final modifiedBy = _i1.ColumnInt('modifiedBy');

  final createdDate = _i1.ColumnDateTime('createdDate');

  final modifiedDate = _i1.ColumnDateTime('modifiedDate');

  @override
  List<_i1.Column> get columns => [
        id,
        truckName,
        truckModelId,
        registrationNumber,
        registrationDate,
        bodyTypeId,
        cargoTypeId,
        maxLoadingCapacity,
        truckCc,
        defaultTruckLocation,
        fuelConsumptionPerKm,
        status,
        modifiedBy,
        createdDate,
        modifiedDate,
      ];
}

@Deprecated('Use TruckTable.t instead.')
TruckTable tTruck = TruckTable();
