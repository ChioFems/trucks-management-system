/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class TruckCargoType extends _i1.TableRow {
  TruckCargoType({
    int? id,
    required this.cargoTypeName,
    required this.status,
    required this.modifiedBy,
    required this.createdDate,
    required this.modifiedDate,
  }) : super(id);

  factory TruckCargoType.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TruckCargoType(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      cargoTypeName: serializationManager
          .deserialize<String>(jsonSerialization['cargoTypeName']),
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

  static final t = TruckCargoTypeTable();

  String cargoTypeName;

  String status;

  int modifiedBy;

  DateTime createdDate;

  DateTime modifiedDate;

  @override
  String get tableName => 'truck_cargo_types';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cargoTypeName': cargoTypeName,
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
      'cargoTypeName': cargoTypeName,
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
      'cargoTypeName': cargoTypeName,
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
      case 'cargoTypeName':
        cargoTypeName = value;
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

  static Future<List<TruckCargoType>> find(
    _i1.Session session, {
    TruckCargoTypeExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TruckCargoType>(
      where: where != null ? where(TruckCargoType.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<TruckCargoType?> findSingleRow(
    _i1.Session session, {
    TruckCargoTypeExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<TruckCargoType>(
      where: where != null ? where(TruckCargoType.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<TruckCargoType?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<TruckCargoType>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TruckCargoTypeExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TruckCargoType>(
      where: where(TruckCargoType.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    TruckCargoType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    TruckCargoType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    TruckCargoType row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    TruckCargoTypeExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TruckCargoType>(
      where: where != null ? where(TruckCargoType.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TruckCargoTypeExpressionBuilder = _i1.Expression Function(
    TruckCargoTypeTable);

class TruckCargoTypeTable extends _i1.Table {
  TruckCargoTypeTable() : super(tableName: 'truck_cargo_types');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final cargoTypeName = _i1.ColumnString('cargoTypeName');

  final status = _i1.ColumnString('status');

  final modifiedBy = _i1.ColumnInt('modifiedBy');

  final createdDate = _i1.ColumnDateTime('createdDate');

  final modifiedDate = _i1.ColumnDateTime('modifiedDate');

  @override
  List<_i1.Column> get columns => [
        id,
        cargoTypeName,
        status,
        modifiedBy,
        createdDate,
        modifiedDate,
      ];
}

@Deprecated('Use TruckCargoTypeTable.t instead.')
TruckCargoTypeTable tTruckCargoType = TruckCargoTypeTable();
