/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Driver extends _i1.TableRow {
  Driver({
    int? id,
    required this.userId,
    required this.licenseNumber,
    required this.licenseExpiryDate,
    required this.status,
    required this.modifiedBy,
    required this.createdDate,
    required this.modifiedDate,
  }) : super(id);

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

  static final t = DriverTable();

  int userId;

  int licenseNumber;

  DateTime licenseExpiryDate;

  String status;

  int modifiedBy;

  DateTime createdDate;

  DateTime modifiedDate;

  @override
  String get tableName => 'drivers';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
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

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'userId':
        userId = value;
        return;
      case 'licenseNumber':
        licenseNumber = value;
        return;
      case 'licenseExpiryDate':
        licenseExpiryDate = value;
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

  static Future<List<Driver>> find(
    _i1.Session session, {
    DriverExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Driver>(
      where: where != null ? where(Driver.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Driver?> findSingleRow(
    _i1.Session session, {
    DriverExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Driver>(
      where: where != null ? where(Driver.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Driver?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Driver>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required DriverExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Driver>(
      where: where(Driver.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Driver row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Driver row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Driver row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    DriverExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Driver>(
      where: where != null ? where(Driver.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef DriverExpressionBuilder = _i1.Expression Function(DriverTable);

class DriverTable extends _i1.Table {
  DriverTable() : super(tableName: 'drivers');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final userId = _i1.ColumnInt('userId');

  final licenseNumber = _i1.ColumnInt('licenseNumber');

  final licenseExpiryDate = _i1.ColumnDateTime('licenseExpiryDate');

  final status = _i1.ColumnString('status');

  final modifiedBy = _i1.ColumnInt('modifiedBy');

  final createdDate = _i1.ColumnDateTime('createdDate');

  final modifiedDate = _i1.ColumnDateTime('modifiedDate');

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        licenseNumber,
        licenseExpiryDate,
        status,
        modifiedBy,
        createdDate,
        modifiedDate,
      ];
}

@Deprecated('Use DriverTable.t instead.')
DriverTable tDriver = DriverTable();
