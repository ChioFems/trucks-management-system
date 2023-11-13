/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class TruckModel extends _i1.TableRow {
  TruckModel({
    int? id,
    required this.brandName,
    required this.modelName,
    required this.status,
    required this.modifiedBy,
    required this.createdDate,
    required this.modifiedDate,
  }) : super(id);

  factory TruckModel.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TruckModel(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      brandName: serializationManager
          .deserialize<String>(jsonSerialization['brandName']),
      modelName: serializationManager
          .deserialize<String>(jsonSerialization['modelName']),
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

  static final t = TruckModelTable();

  String brandName;

  String modelName;

  String status;

  int modifiedBy;

  DateTime createdDate;

  DateTime modifiedDate;

  @override
  String get tableName => 'truck_models';

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'brandName': brandName,
      'modelName': modelName,
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
      'brandName': brandName,
      'modelName': modelName,
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
      'brandName': brandName,
      'modelName': modelName,
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
      case 'brandName':
        brandName = value;
        return;
      case 'modelName':
        modelName = value;
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

  static Future<List<TruckModel>> find(
    _i1.Session session, {
    TruckModelExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TruckModel>(
      where: where != null ? where(TruckModel.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<TruckModel?> findSingleRow(
    _i1.Session session, {
    TruckModelExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<TruckModel>(
      where: where != null ? where(TruckModel.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<TruckModel?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<TruckModel>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TruckModelExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TruckModel>(
      where: where(TruckModel.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    TruckModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    TruckModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    TruckModel row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    TruckModelExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TruckModel>(
      where: where != null ? where(TruckModel.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TruckModelExpressionBuilder = _i1.Expression Function(TruckModelTable);

class TruckModelTable extends _i1.Table {
  TruckModelTable() : super(tableName: 'truck_models');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final brandName = _i1.ColumnString('brandName');

  final modelName = _i1.ColumnString('modelName');

  final status = _i1.ColumnString('status');

  final modifiedBy = _i1.ColumnInt('modifiedBy');

  final createdDate = _i1.ColumnDateTime('createdDate');

  final modifiedDate = _i1.ColumnDateTime('modifiedDate');

  @override
  List<_i1.Column> get columns => [
        id,
        brandName,
        modelName,
        status,
        modifiedBy,
        createdDate,
        modifiedDate,
      ];
}

@Deprecated('Use TruckModelTable.t instead.')
TruckModelTable tTruckModel = TruckModelTable();
