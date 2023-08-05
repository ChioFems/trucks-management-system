/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class User extends _i1.TableRow {
  User({
    int? id,
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
  }) : super(id);

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

  static final t = UserTable();

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
  String get tableName => 'users';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
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

  @override
  Map<String, dynamic> allToJson() {
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
      case 'firstName':
        firstName = value;
        return;
      case 'lastName':
        lastName = value;
        return;
      case 'nidaNumber':
        nidaNumber = value;
        return;
      case 'dateOfBirth':
        dateOfBirth = value;
        return;
      case 'phone':
        phone = value;
        return;
      case 'roleId':
        roleId = value;
        return;
      case 'gender':
        gender = value;
        return;
      case 'status':
        status = value;
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

  static Future<List<User>> find(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<User?> findSingleRow(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<User>(
      where: where != null ? where(User.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<User?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<User>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required UserExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef UserExpressionBuilder = _i1.Expression Function(UserTable);

class UserTable extends _i1.Table {
  UserTable() : super(tableName: 'users');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final userId = _i1.ColumnInt('userId');

  final firstName = _i1.ColumnString('firstName');

  final lastName = _i1.ColumnString('lastName');

  final nidaNumber = _i1.ColumnString('nidaNumber');

  final dateOfBirth = _i1.ColumnDateTime('dateOfBirth');

  final phone = _i1.ColumnInt('phone');

  final roleId = _i1.ColumnInt('roleId');

  final gender = _i1.ColumnString('gender');

  final status = _i1.ColumnString('status');

  final createdDate = _i1.ColumnDateTime('createdDate');

  final modifiedDate = _i1.ColumnDateTime('modifiedDate');

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        firstName,
        lastName,
        nidaNumber,
        dateOfBirth,
        phone,
        roleId,
        gender,
        status,
        createdDate,
        modifiedDate,
      ];
}

@Deprecated('Use UserTable.t instead.')
UserTable tUser = UserTable();
