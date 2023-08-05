/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:trucks_client/src/protocol/driver.dart' as _i3;
import 'package:trucks_client/src/protocol/role.dart' as _i4;
import 'package:trucks_client/src/protocol/truck_body_type.dart' as _i5;
import 'package:trucks_client/src/protocol/truck_cargo_type.dart' as _i6;
import 'package:trucks_client/src/protocol/truck_driver.dart' as _i7;
import 'package:trucks_client/src/protocol/truck.dart' as _i8;
import 'package:trucks_client/src/protocol/truck_model.dart' as _i9;
import 'package:trucks_client/src/protocol/user.dart' as _i10;
import 'package:serverpod_auth_client/module.dart' as _i11;
import 'dart:io' as _i12;
import 'protocol.dart' as _i13;

class _EndpointDriver extends _i1.EndpointRef {
  _EndpointDriver(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'driver';

  _i2.Future<_i3.Driver> create(_i3.Driver driver) =>
      caller.callServerEndpoint<_i3.Driver>(
        'driver',
        'create',
        {'driver': driver},
      );

  _i2.Future<List<_i3.Driver>> readByUser() =>
      caller.callServerEndpoint<List<_i3.Driver>>(
        'driver',
        'readByUser',
        {},
      );

  _i2.Future<_i3.Driver?> read(int driverId) =>
      caller.callServerEndpoint<_i3.Driver?>(
        'driver',
        'read',
        {'driverId': driverId},
      );

  _i2.Future<List<_i3.Driver>> readAll() =>
      caller.callServerEndpoint<List<_i3.Driver>>(
        'driver',
        'readAll',
        {},
      );

  _i2.Future<_i3.Driver> update(_i3.Driver driver) =>
      caller.callServerEndpoint<_i3.Driver>(
        'driver',
        'update',
        {'driver': driver},
      );

  _i2.Future<void> delete(int driverId) => caller.callServerEndpoint<void>(
        'driver',
        'delete',
        {'driverId': driverId},
      );
}

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointRole extends _i1.EndpointRef {
  _EndpointRole(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'role';

  _i2.Future<_i4.Role> create(_i4.Role role) =>
      caller.callServerEndpoint<_i4.Role>(
        'role',
        'create',
        {'role': role},
      );

  _i2.Future<_i4.Role?> read(int roleId) =>
      caller.callServerEndpoint<_i4.Role?>(
        'role',
        'read',
        {'roleId': roleId},
      );

  _i2.Future<List<_i4.Role>> readAll() =>
      caller.callServerEndpoint<List<_i4.Role>>(
        'role',
        'readAll',
        {},
      );

  _i2.Future<_i4.Role> update(_i4.Role role) =>
      caller.callServerEndpoint<_i4.Role>(
        'role',
        'update',
        {'role': role},
      );

  _i2.Future<void> delete(int roleId) => caller.callServerEndpoint<void>(
        'role',
        'delete',
        {'roleId': roleId},
      );
}

class _EndpointTruckBodyType extends _i1.EndpointRef {
  _EndpointTruckBodyType(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'truckBodyType';

  _i2.Future<_i5.TruckBodyType> create(_i5.TruckBodyType truckBodyType) =>
      caller.callServerEndpoint<_i5.TruckBodyType>(
        'truckBodyType',
        'create',
        {'truckBodyType': truckBodyType},
      );

  _i2.Future<_i5.TruckBodyType?> read(int truckBodyTypeId) =>
      caller.callServerEndpoint<_i5.TruckBodyType?>(
        'truckBodyType',
        'read',
        {'truckBodyTypeId': truckBodyTypeId},
      );

  _i2.Future<List<_i5.TruckBodyType>> readAll() =>
      caller.callServerEndpoint<List<_i5.TruckBodyType>>(
        'truckBodyType',
        'readAll',
        {},
      );

  _i2.Future<_i5.TruckBodyType> update(_i5.TruckBodyType truckBodyType) =>
      caller.callServerEndpoint<_i5.TruckBodyType>(
        'truckBodyType',
        'update',
        {'truckBodyType': truckBodyType},
      );

  _i2.Future<void> delete(int truckBodyTypeId) =>
      caller.callServerEndpoint<void>(
        'truckBodyType',
        'delete',
        {'truckBodyTypeId': truckBodyTypeId},
      );
}

class _EndpointTruckCargoType extends _i1.EndpointRef {
  _EndpointTruckCargoType(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'truckCargoType';

  _i2.Future<_i6.TruckCargoType> create(_i6.TruckCargoType truckCargoType) =>
      caller.callServerEndpoint<_i6.TruckCargoType>(
        'truckCargoType',
        'create',
        {'truckCargoType': truckCargoType},
      );

  _i2.Future<_i6.TruckCargoType?> read(int truckCargoTypeId) =>
      caller.callServerEndpoint<_i6.TruckCargoType?>(
        'truckCargoType',
        'read',
        {'truckCargoTypeId': truckCargoTypeId},
      );

  _i2.Future<List<_i6.TruckCargoType>> readAll() =>
      caller.callServerEndpoint<List<_i6.TruckCargoType>>(
        'truckCargoType',
        'readAll',
        {},
      );

  _i2.Future<_i6.TruckCargoType> update(_i6.TruckCargoType truckCargoType) =>
      caller.callServerEndpoint<_i6.TruckCargoType>(
        'truckCargoType',
        'update',
        {'truckCargoType': truckCargoType},
      );

  _i2.Future<void> delete(int truckCargoTypeId) =>
      caller.callServerEndpoint<void>(
        'truckCargoType',
        'delete',
        {'truckCargoTypeId': truckCargoTypeId},
      );
}

class _EndpointTruckDriver extends _i1.EndpointRef {
  _EndpointTruckDriver(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'truckDriver';

  _i2.Future<bool> create({
    required int truckId,
    required int driverId,
    required String truckStatus,
    required int modifiedBy,
    required DateTime createdDate,
    required DateTime modifiedDate,
  }) =>
      caller.callServerEndpoint<bool>(
        'truckDriver',
        'create',
        {
          'truckId': truckId,
          'driverId': driverId,
          'truckStatus': truckStatus,
          'modifiedBy': modifiedBy,
          'createdDate': createdDate,
          'modifiedDate': modifiedDate,
        },
      );

  _i2.Future<List<_i7.TruckDriver>> readByDriver(int driverId) =>
      caller.callServerEndpoint<List<_i7.TruckDriver>>(
        'truckDriver',
        'readByDriver',
        {'driverId': driverId},
      );

  _i2.Future<_i7.TruckDriver?> read(int truckDriverId) =>
      caller.callServerEndpoint<_i7.TruckDriver?>(
        'truckDriver',
        'read',
        {'truckDriverId': truckDriverId},
      );

  _i2.Future<List<_i7.TruckDriver>> readAll() =>
      caller.callServerEndpoint<List<_i7.TruckDriver>>(
        'truckDriver',
        'readAll',
        {},
      );

  _i2.Future<_i7.TruckDriver> update(_i7.TruckDriver truckDriver) =>
      caller.callServerEndpoint<_i7.TruckDriver>(
        'truckDriver',
        'update',
        {'truckDriver': truckDriver},
      );

  _i2.Future<void> delete(int truckDriverId) => caller.callServerEndpoint<void>(
        'truckDriver',
        'delete',
        {'truckDriverId': truckDriverId},
      );
}

class _EndpointTruck extends _i1.EndpointRef {
  _EndpointTruck(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'truck';

  _i2.Future<bool> create({
    required String truckName,
    required int truckModelId,
    required String registrationNumber,
    required DateTime registrationDate,
    int? bodyTypeId,
    int? cargoTypeId,
    int? maxLoadingCapacity,
    required int truckCc,
    String? defaultTruckLocation,
    int? fuelConsumptionPerKm,
    required String status,
    required int modifiedBy,
    required DateTime createdDate,
    required DateTime modifiedDate,
  }) =>
      caller.callServerEndpoint<bool>(
        'truck',
        'create',
        {
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
        },
      );

  _i2.Future<_i8.Truck?> read(int truckId) =>
      caller.callServerEndpoint<_i8.Truck?>(
        'truck',
        'read',
        {'truckId': truckId},
      );

  _i2.Future<List<_i8.Truck>> readAll() =>
      caller.callServerEndpoint<List<_i8.Truck>>(
        'truck',
        'readAll',
        {},
      );

  _i2.Future<_i8.Truck> update(_i8.Truck truck) =>
      caller.callServerEndpoint<_i8.Truck>(
        'truck',
        'update',
        {'truck': truck},
      );

  _i2.Future<void> delete(int truckId) => caller.callServerEndpoint<void>(
        'truck',
        'delete',
        {'truckId': truckId},
      );
}

class _EndpointTruckModel extends _i1.EndpointRef {
  _EndpointTruckModel(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'truckModel';

  _i2.Future<bool> create({
    required String brandName,
    required String modelName,
    required String status,
    required int modifiedBy,
    required DateTime createdDate,
    required DateTime modifiedDate,
  }) =>
      caller.callServerEndpoint<bool>(
        'truckModel',
        'create',
        {
          'brandName': brandName,
          'modelName': modelName,
          'status': status,
          'modifiedBy': modifiedBy,
          'createdDate': createdDate,
          'modifiedDate': modifiedDate,
        },
      );

  _i2.Future<_i9.TruckModel?> read(int truckModelId) =>
      caller.callServerEndpoint<_i9.TruckModel?>(
        'truckModel',
        'read',
        {'truckModelId': truckModelId},
      );

  _i2.Future<List<_i9.TruckModel>> readAll() =>
      caller.callServerEndpoint<List<_i9.TruckModel>>(
        'truckModel',
        'readAll',
        {},
      );

  _i2.Future<_i9.TruckModel> update(_i9.TruckModel truckModel) =>
      caller.callServerEndpoint<_i9.TruckModel>(
        'truckModel',
        'update',
        {'truckModel': truckModel},
      );

  _i2.Future<void> delete(int truckModelId) => caller.callServerEndpoint<void>(
        'truckModel',
        'delete',
        {'truckModelId': truckModelId},
      );
}

class _EndpointUser extends _i1.EndpointRef {
  _EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<_i10.User> create(_i10.User user) =>
      caller.callServerEndpoint<_i10.User>(
        'user',
        'create',
        {'user': user},
      );

  _i2.Future<_i10.User?> read({required int userId}) =>
      caller.callServerEndpoint<_i10.User?>(
        'user',
        'read',
        {'userId': userId},
      );

  _i2.Future<List<_i10.User>> readAll() =>
      caller.callServerEndpoint<List<_i10.User>>(
        'user',
        'readAll',
        {},
      );

  _i2.Future<_i10.User> update(_i10.User user) =>
      caller.callServerEndpoint<_i10.User>(
        'user',
        'update',
        {'user': user},
      );

  _i2.Future<void> delete({required int userId}) =>
      caller.callServerEndpoint<void>(
        'user',
        'delete',
        {'userId': userId},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i11.Caller(client);
  }

  late final _i11.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i12.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i13.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    driver = _EndpointDriver(this);
    example = _EndpointExample(this);
    role = _EndpointRole(this);
    truckBodyType = _EndpointTruckBodyType(this);
    truckCargoType = _EndpointTruckCargoType(this);
    truckDriver = _EndpointTruckDriver(this);
    truck = _EndpointTruck(this);
    truckModel = _EndpointTruckModel(this);
    user = _EndpointUser(this);
    modules = _Modules(this);
  }

  late final _EndpointDriver driver;

  late final _EndpointExample example;

  late final _EndpointRole role;

  late final _EndpointTruckBodyType truckBodyType;

  late final _EndpointTruckCargoType truckCargoType;

  late final _EndpointTruckDriver truckDriver;

  late final _EndpointTruck truck;

  late final _EndpointTruckModel truckModel;

  late final _EndpointUser user;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'driver': driver,
        'example': example,
        'role': role,
        'truckBodyType': truckBodyType,
        'truckCargoType': truckCargoType,
        'truckDriver': truckDriver,
        'truck': truck,
        'truckModel': truckModel,
        'user': user,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
