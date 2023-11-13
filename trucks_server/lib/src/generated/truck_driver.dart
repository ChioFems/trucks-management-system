/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class TruckDriver extends _i1.TableRow {
  TruckDriver({
    int? id,
    required this.truckId,
    required this.driverId,
    required this.truckStatus,
    required this.modifiedBy,
    required this.createdDate,
    required this.modifiedDate,
  }) : super(id);

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

  static final t = TruckDriverTable();

  int truckId;

  int driverId;

  String truckStatus;

  int modifiedBy;

  DateTime createdDate;

  DateTime modifiedDate;

  @override
  String get tableName => 'truck_drivers';

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

  @override
  Map<String, dynamic> toJsonForDatabase() {
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

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'truckId':
        truckId = value;
        return;
      case 'driverId':
        driverId = value;
        return;
      case 'truckStatus':
        truckStatus = value;
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

  static Future<List<TruckDriver>> find(
    _i1.Session session, {
    TruckDriverExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TruckDriver>(
      where: where != null ? where(TruckDriver.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<TruckDriver?> findSingleRow(
    _i1.Session session, {
    TruckDriverExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<TruckDriver>(
      where: where != null ? where(TruckDriver.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<TruckDriver?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<TruckDriver>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TruckDriverExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TruckDriver>(
      where: where(TruckDriver.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    TruckDriver row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    TruckDriver row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    TruckDriver row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    TruckDriverExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TruckDriver>(
      where: where != null ? where(TruckDriver.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TruckDriverExpressionBuilder = _i1.Expression Function(
    TruckDriverTable);

class TruckDriverTable extends _i1.Table {
  TruckDriverTable() : super(tableName: 'truck_drivers');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final truckId = _i1.ColumnInt('truckId');

  final driverId = _i1.ColumnInt('driverId');

  final truckStatus = _i1.ColumnString('truckStatus');

  final modifiedBy = _i1.ColumnInt('modifiedBy');

  final createdDate = _i1.ColumnDateTime('createdDate');

  final modifiedDate = _i1.ColumnDateTime('modifiedDate');

  @override
  List<_i1.Column> get columns => [
        id,
        truckId,
        driverId,
        truckStatus,
        modifiedBy,
        createdDate,
        modifiedDate,
      ];
}

@Deprecated('Use TruckDriverTable.t instead.')
TruckDriverTable tTruckDriver = TruckDriverTable();
