/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/module.dart' as _i3;
import 'driver.dart' as _i4;
import 'example.dart' as _i5;
import 'role.dart' as _i6;
import 'truck.dart' as _i7;
import 'truck_body_type.dart' as _i8;
import 'truck_cargo_type.dart' as _i9;
import 'truck_driver.dart' as _i10;
import 'truck_model.dart' as _i11;
import 'user.dart' as _i12;
import 'package:trucks_server/src/generated/driver.dart' as _i13;
import 'package:trucks_server/src/generated/role.dart' as _i14;
import 'package:trucks_server/src/generated/truck_body_type.dart' as _i15;
import 'package:trucks_server/src/generated/truck_cargo_type.dart' as _i16;
import 'package:trucks_server/src/generated/truck_driver.dart' as _i17;
import 'package:trucks_server/src/generated/truck.dart' as _i18;
import 'package:trucks_server/src/generated/truck_model.dart' as _i19;
import 'package:trucks_server/src/generated/user.dart' as _i20;
export 'driver.dart';
export 'example.dart';
export 'role.dart';
export 'truck.dart';
export 'truck_body_type.dart';
export 'truck_cargo_type.dart';
export 'truck_driver.dart';
export 'truck_model.dart';
export 'user.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final targetDatabaseDefinition = _i2.DatabaseDefinition(tables: [
    _i2.TableDefinition(
      name: 'drivers',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'drivers_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'licenseNumber',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'licenseExpiryDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedBy',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'drivers_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'roles',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'roles_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedBy',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'roles_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'trucks',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'trucks_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'truckName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'truckModelId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'registrationNumber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'registrationDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'bodyTypeId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'cargoTypeId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'maxLoadingCapacity',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'truckCc',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'defaultTruckLocation',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'fuelConsumptionPerKm',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedBy',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'trucks_fk_0',
          columns: ['truckModelId'],
          referenceTable: 'truck_models',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: null,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'trucks_fk_1',
          columns: ['bodyTypeId'],
          referenceTable: 'truck_body_types',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: null,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'trucks_fk_2',
          columns: ['cargoTypeId'],
          referenceTable: 'truck_cargo_types',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: null,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'trucks_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'truck_body_types',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'truck_body_types_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'bodyName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedBy',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'truck_body_types_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'truck_cargo_types',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'truck_cargo_types_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'cargoTypeName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedBy',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'truck_cargo_types_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'truck_drivers',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'truck_drivers_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'truckId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'driverId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'truckStatus',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedBy',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'truck_drivers_fk_0',
          columns: ['truckId'],
          referenceTable: 'trucks',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: null,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'truck_drivers_fk_1',
          columns: ['driverId'],
          referenceTable: 'drivers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: null,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'truck_drivers_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'truck_models',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'truck_models_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'brandName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'modelName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedBy',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'truck_models_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'users',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'users_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'firstName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'lastName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'nidaNumber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'dateOfBirth',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'phone',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'roleId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'gender',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'modifiedDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'users_fk_0',
          columns: ['roleId'],
          referenceTable: 'roles',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: null,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'users_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetDatabaseDefinition.tables,
    ..._i2.Protocol.targetDatabaseDefinition.tables,
  ]);

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i4.Driver) {
      return _i4.Driver.fromJson(data, this) as T;
    }
    if (t == _i5.Example) {
      return _i5.Example.fromJson(data, this) as T;
    }
    if (t == _i6.Role) {
      return _i6.Role.fromJson(data, this) as T;
    }
    if (t == _i7.Truck) {
      return _i7.Truck.fromJson(data, this) as T;
    }
    if (t == _i8.TruckBodyType) {
      return _i8.TruckBodyType.fromJson(data, this) as T;
    }
    if (t == _i9.TruckCargoType) {
      return _i9.TruckCargoType.fromJson(data, this) as T;
    }
    if (t == _i10.TruckDriver) {
      return _i10.TruckDriver.fromJson(data, this) as T;
    }
    if (t == _i11.TruckModel) {
      return _i11.TruckModel.fromJson(data, this) as T;
    }
    if (t == _i12.User) {
      return _i12.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i4.Driver?>()) {
      return (data != null ? _i4.Driver.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Example?>()) {
      return (data != null ? _i5.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Role?>()) {
      return (data != null ? _i6.Role.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Truck?>()) {
      return (data != null ? _i7.Truck.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.TruckBodyType?>()) {
      return (data != null ? _i8.TruckBodyType.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i9.TruckCargoType?>()) {
      return (data != null ? _i9.TruckCargoType.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i10.TruckDriver?>()) {
      return (data != null ? _i10.TruckDriver.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.TruckModel?>()) {
      return (data != null ? _i11.TruckModel.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.User?>()) {
      return (data != null ? _i12.User.fromJson(data, this) : null) as T;
    }
    if (t == List<_i13.Driver>) {
      return (data as List).map((e) => deserialize<_i13.Driver>(e)).toList()
          as dynamic;
    }
    if (t == List<_i14.Role>) {
      return (data as List).map((e) => deserialize<_i14.Role>(e)).toList()
          as dynamic;
    }
    if (t == List<_i15.TruckBodyType>) {
      return (data as List)
          .map((e) => deserialize<_i15.TruckBodyType>(e))
          .toList() as dynamic;
    }
    if (t == List<_i16.TruckCargoType>) {
      return (data as List)
          .map((e) => deserialize<_i16.TruckCargoType>(e))
          .toList() as dynamic;
    }
    if (t == List<_i17.TruckDriver>) {
      return (data as List)
          .map((e) => deserialize<_i17.TruckDriver>(e))
          .toList() as dynamic;
    }
    if (t == List<_i18.Truck>) {
      return (data as List).map((e) => deserialize<_i18.Truck>(e)).toList()
          as dynamic;
    }
    if (t == List<_i19.TruckModel>) {
      return (data as List).map((e) => deserialize<_i19.TruckModel>(e)).toList()
          as dynamic;
    }
    if (t == List<_i20.User>) {
      return (data as List).map((e) => deserialize<_i20.User>(e)).toList()
          as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i4.Driver) {
      return 'Driver';
    }
    if (data is _i5.Example) {
      return 'Example';
    }
    if (data is _i6.Role) {
      return 'Role';
    }
    if (data is _i7.Truck) {
      return 'Truck';
    }
    if (data is _i8.TruckBodyType) {
      return 'TruckBodyType';
    }
    if (data is _i9.TruckCargoType) {
      return 'TruckCargoType';
    }
    if (data is _i10.TruckDriver) {
      return 'TruckDriver';
    }
    if (data is _i11.TruckModel) {
      return 'TruckModel';
    }
    if (data is _i12.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Driver') {
      return deserialize<_i4.Driver>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i5.Example>(data['data']);
    }
    if (data['className'] == 'Role') {
      return deserialize<_i6.Role>(data['data']);
    }
    if (data['className'] == 'Truck') {
      return deserialize<_i7.Truck>(data['data']);
    }
    if (data['className'] == 'TruckBodyType') {
      return deserialize<_i8.TruckBodyType>(data['data']);
    }
    if (data['className'] == 'TruckCargoType') {
      return deserialize<_i9.TruckCargoType>(data['data']);
    }
    if (data['className'] == 'TruckDriver') {
      return deserialize<_i10.TruckDriver>(data['data']);
    }
    if (data['className'] == 'TruckModel') {
      return deserialize<_i11.TruckModel>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i12.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.Driver:
        return _i4.Driver.t;
      case _i6.Role:
        return _i6.Role.t;
      case _i7.Truck:
        return _i7.Truck.t;
      case _i8.TruckBodyType:
        return _i8.TruckBodyType.t;
      case _i9.TruckCargoType:
        return _i9.TruckCargoType.t;
      case _i10.TruckDriver:
        return _i10.TruckDriver.t;
      case _i11.TruckModel:
        return _i11.TruckModel.t;
      case _i12.User:
        return _i12.User.t;
    }
    return null;
  }

  @override
  _i2.DatabaseDefinition getTargetDatabaseDefinition() =>
      targetDatabaseDefinition;
}
