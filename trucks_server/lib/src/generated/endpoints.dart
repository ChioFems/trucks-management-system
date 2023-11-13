/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/driver_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/role_endpoint.dart' as _i4;
import '../endpoints/truck_body_type_endpoint.dart' as _i5;
import '../endpoints/truck_cargo_type_endpoint.dart' as _i6;
import '../endpoints/truck_driver_endpoint.dart' as _i7;
import '../endpoints/truck_endpoint.dart' as _i8;
import '../endpoints/truck_model_endpoint.dart' as _i9;
import '../endpoints/user_endpoint.dart' as _i10;
import 'package:trucks_server/src/generated/driver.dart' as _i11;
import 'package:trucks_server/src/generated/role.dart' as _i12;
import 'package:trucks_server/src/generated/truck_body_type.dart' as _i13;
import 'package:trucks_server/src/generated/truck_cargo_type.dart' as _i14;
import 'package:trucks_server/src/generated/truck_driver.dart' as _i15;
import 'package:trucks_server/src/generated/truck.dart' as _i16;
import 'package:trucks_server/src/generated/truck_model.dart' as _i17;
import 'package:trucks_server/src/generated/user.dart' as _i18;
import 'package:serverpod_auth_server/module.dart' as _i19;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'driver': _i2.DriverEndpoint()
        ..initialize(
          server,
          'driver',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'role': _i4.RoleEndpoint()
        ..initialize(
          server,
          'role',
          null,
        ),
      'truckBodyType': _i5.TruckBodyTypeEndpoint()
        ..initialize(
          server,
          'truckBodyType',
          null,
        ),
      'truckCargoType': _i6.TruckCargoTypeEndpoint()
        ..initialize(
          server,
          'truckCargoType',
          null,
        ),
      'truckDriver': _i7.TruckDriverEndpoint()
        ..initialize(
          server,
          'truckDriver',
          null,
        ),
      'truck': _i8.TruckEndpoint()
        ..initialize(
          server,
          'truck',
          null,
        ),
      'truckModel': _i9.TruckModelEndpoint()
        ..initialize(
          server,
          'truckModel',
          null,
        ),
      'user': _i10.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
    };
    connectors['driver'] = _i1.EndpointConnector(
      name: 'driver',
      endpoint: endpoints['driver']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'driver': _i1.ParameterDescription(
              name: 'driver',
              type: _i1.getType<_i11.Driver>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['driver'] as _i2.DriverEndpoint).create(
            session,
            params['driver'],
          ),
        ),
        'readByUser': _i1.MethodConnector(
          name: 'readByUser',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['driver'] as _i2.DriverEndpoint).readByUser(session),
        ),
        'read': _i1.MethodConnector(
          name: 'read',
          params: {
            'driverId': _i1.ParameterDescription(
              name: 'driverId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['driver'] as _i2.DriverEndpoint).read(
            session,
            params['driverId'],
          ),
        ),
        'readAll': _i1.MethodConnector(
          name: 'readAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['driver'] as _i2.DriverEndpoint).readAll(session),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'driver': _i1.ParameterDescription(
              name: 'driver',
              type: _i1.getType<_i11.Driver>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['driver'] as _i2.DriverEndpoint).update(
            session,
            params['driver'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'driverId': _i1.ParameterDescription(
              name: 'driverId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['driver'] as _i2.DriverEndpoint).delete(
            session,
            params['driverId'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['role'] = _i1.EndpointConnector(
      name: 'role',
      endpoint: endpoints['role']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'role': _i1.ParameterDescription(
              name: 'role',
              type: _i1.getType<_i12.Role>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['role'] as _i4.RoleEndpoint).create(
            session,
            params['role'],
          ),
        ),
        'read': _i1.MethodConnector(
          name: 'read',
          params: {
            'roleId': _i1.ParameterDescription(
              name: 'roleId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['role'] as _i4.RoleEndpoint).read(
            session,
            params['roleId'],
          ),
        ),
        'readAll': _i1.MethodConnector(
          name: 'readAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['role'] as _i4.RoleEndpoint).readAll(session),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'role': _i1.ParameterDescription(
              name: 'role',
              type: _i1.getType<_i12.Role>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['role'] as _i4.RoleEndpoint).update(
            session,
            params['role'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'roleId': _i1.ParameterDescription(
              name: 'roleId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['role'] as _i4.RoleEndpoint).delete(
            session,
            params['roleId'],
          ),
        ),
      },
    );
    connectors['truckBodyType'] = _i1.EndpointConnector(
      name: 'truckBodyType',
      endpoint: endpoints['truckBodyType']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'truckBodyType': _i1.ParameterDescription(
              name: 'truckBodyType',
              type: _i1.getType<_i13.TruckBodyType>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckBodyType'] as _i5.TruckBodyTypeEndpoint).create(
            session,
            params['truckBodyType'],
          ),
        ),
        'read': _i1.MethodConnector(
          name: 'read',
          params: {
            'truckBodyTypeId': _i1.ParameterDescription(
              name: 'truckBodyTypeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckBodyType'] as _i5.TruckBodyTypeEndpoint).read(
            session,
            params['truckBodyTypeId'],
          ),
        ),
        'readAll': _i1.MethodConnector(
          name: 'readAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckBodyType'] as _i5.TruckBodyTypeEndpoint)
                  .readAll(session),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'truckBodyType': _i1.ParameterDescription(
              name: 'truckBodyType',
              type: _i1.getType<_i13.TruckBodyType>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckBodyType'] as _i5.TruckBodyTypeEndpoint).update(
            session,
            params['truckBodyType'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'truckBodyTypeId': _i1.ParameterDescription(
              name: 'truckBodyTypeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckBodyType'] as _i5.TruckBodyTypeEndpoint).delete(
            session,
            params['truckBodyTypeId'],
          ),
        ),
      },
    );
    connectors['truckCargoType'] = _i1.EndpointConnector(
      name: 'truckCargoType',
      endpoint: endpoints['truckCargoType']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'truckCargoType': _i1.ParameterDescription(
              name: 'truckCargoType',
              type: _i1.getType<_i14.TruckCargoType>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckCargoType'] as _i6.TruckCargoTypeEndpoint)
                  .create(
            session,
            params['truckCargoType'],
          ),
        ),
        'read': _i1.MethodConnector(
          name: 'read',
          params: {
            'truckCargoTypeId': _i1.ParameterDescription(
              name: 'truckCargoTypeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckCargoType'] as _i6.TruckCargoTypeEndpoint).read(
            session,
            params['truckCargoTypeId'],
          ),
        ),
        'readAll': _i1.MethodConnector(
          name: 'readAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckCargoType'] as _i6.TruckCargoTypeEndpoint)
                  .readAll(session),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'truckCargoType': _i1.ParameterDescription(
              name: 'truckCargoType',
              type: _i1.getType<_i14.TruckCargoType>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckCargoType'] as _i6.TruckCargoTypeEndpoint)
                  .update(
            session,
            params['truckCargoType'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'truckCargoTypeId': _i1.ParameterDescription(
              name: 'truckCargoTypeId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckCargoType'] as _i6.TruckCargoTypeEndpoint)
                  .delete(
            session,
            params['truckCargoTypeId'],
          ),
        ),
      },
    );
    connectors['truckDriver'] = _i1.EndpointConnector(
      name: 'truckDriver',
      endpoint: endpoints['truckDriver']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'truckId': _i1.ParameterDescription(
              name: 'truckId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'driverId': _i1.ParameterDescription(
              name: 'driverId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'truckStatus': _i1.ParameterDescription(
              name: 'truckStatus',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'modifiedBy': _i1.ParameterDescription(
              name: 'modifiedBy',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'createdDate': _i1.ParameterDescription(
              name: 'createdDate',
              type: _i1.getType<DateTime>(),
              nullable: false,
            ),
            'modifiedDate': _i1.ParameterDescription(
              name: 'modifiedDate',
              type: _i1.getType<DateTime>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckDriver'] as _i7.TruckDriverEndpoint).create(
            session,
            truckId: params['truckId'],
            driverId: params['driverId'],
            truckStatus: params['truckStatus'],
            modifiedBy: params['modifiedBy'],
            createdDate: params['createdDate'],
            modifiedDate: params['modifiedDate'],
          ),
        ),
        'readByDriver': _i1.MethodConnector(
          name: 'readByDriver',
          params: {
            'driverId': _i1.ParameterDescription(
              name: 'driverId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckDriver'] as _i7.TruckDriverEndpoint)
                  .readByDriver(
            session,
            params['driverId'],
          ),
        ),
        'read': _i1.MethodConnector(
          name: 'read',
          params: {
            'truckDriverId': _i1.ParameterDescription(
              name: 'truckDriverId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckDriver'] as _i7.TruckDriverEndpoint).read(
            session,
            params['truckDriverId'],
          ),
        ),
        'readAll': _i1.MethodConnector(
          name: 'readAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckDriver'] as _i7.TruckDriverEndpoint)
                  .readAll(session),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'truckDriver': _i1.ParameterDescription(
              name: 'truckDriver',
              type: _i1.getType<_i15.TruckDriver>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckDriver'] as _i7.TruckDriverEndpoint).update(
            session,
            params['truckDriver'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'truckDriverId': _i1.ParameterDescription(
              name: 'truckDriverId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckDriver'] as _i7.TruckDriverEndpoint).delete(
            session,
            params['truckDriverId'],
          ),
        ),
      },
    );
    connectors['truck'] = _i1.EndpointConnector(
      name: 'truck',
      endpoint: endpoints['truck']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'truckName': _i1.ParameterDescription(
              name: 'truckName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'truckModelId': _i1.ParameterDescription(
              name: 'truckModelId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'registrationNumber': _i1.ParameterDescription(
              name: 'registrationNumber',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'registrationDate': _i1.ParameterDescription(
              name: 'registrationDate',
              type: _i1.getType<DateTime>(),
              nullable: false,
            ),
            'bodyTypeId': _i1.ParameterDescription(
              name: 'bodyTypeId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'cargoTypeId': _i1.ParameterDescription(
              name: 'cargoTypeId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'maxLoadingCapacity': _i1.ParameterDescription(
              name: 'maxLoadingCapacity',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'truckCc': _i1.ParameterDescription(
              name: 'truckCc',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'defaultTruckLocation': _i1.ParameterDescription(
              name: 'defaultTruckLocation',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'fuelConsumptionPerKm': _i1.ParameterDescription(
              name: 'fuelConsumptionPerKm',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'modifiedBy': _i1.ParameterDescription(
              name: 'modifiedBy',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'createdDate': _i1.ParameterDescription(
              name: 'createdDate',
              type: _i1.getType<DateTime>(),
              nullable: false,
            ),
            'modifiedDate': _i1.ParameterDescription(
              name: 'modifiedDate',
              type: _i1.getType<DateTime>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truck'] as _i8.TruckEndpoint).create(
            session,
            truckName: params['truckName'],
            truckModelId: params['truckModelId'],
            registrationNumber: params['registrationNumber'],
            registrationDate: params['registrationDate'],
            bodyTypeId: params['bodyTypeId'],
            cargoTypeId: params['cargoTypeId'],
            maxLoadingCapacity: params['maxLoadingCapacity'],
            truckCc: params['truckCc'],
            defaultTruckLocation: params['defaultTruckLocation'],
            fuelConsumptionPerKm: params['fuelConsumptionPerKm'],
            status: params['status'],
            modifiedBy: params['modifiedBy'],
            createdDate: params['createdDate'],
            modifiedDate: params['modifiedDate'],
          ),
        ),
        'read': _i1.MethodConnector(
          name: 'read',
          params: {
            'truckId': _i1.ParameterDescription(
              name: 'truckId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truck'] as _i8.TruckEndpoint).read(
            session,
            params['truckId'],
          ),
        ),
        'readAll': _i1.MethodConnector(
          name: 'readAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truck'] as _i8.TruckEndpoint).readAll(session),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'truck': _i1.ParameterDescription(
              name: 'truck',
              type: _i1.getType<_i16.Truck>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truck'] as _i8.TruckEndpoint).update(
            session,
            params['truck'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'truckId': _i1.ParameterDescription(
              name: 'truckId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truck'] as _i8.TruckEndpoint).delete(
            session,
            params['truckId'],
          ),
        ),
      },
    );
    connectors['truckModel'] = _i1.EndpointConnector(
      name: 'truckModel',
      endpoint: endpoints['truckModel']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'brandName': _i1.ParameterDescription(
              name: 'brandName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'modelName': _i1.ParameterDescription(
              name: 'modelName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'modifiedBy': _i1.ParameterDescription(
              name: 'modifiedBy',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'createdDate': _i1.ParameterDescription(
              name: 'createdDate',
              type: _i1.getType<DateTime>(),
              nullable: false,
            ),
            'modifiedDate': _i1.ParameterDescription(
              name: 'modifiedDate',
              type: _i1.getType<DateTime>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckModel'] as _i9.TruckModelEndpoint).create(
            session,
            brandName: params['brandName'],
            modelName: params['modelName'],
            status: params['status'],
            modifiedBy: params['modifiedBy'],
            createdDate: params['createdDate'],
            modifiedDate: params['modifiedDate'],
          ),
        ),
        'readAll': _i1.MethodConnector(
          name: 'readAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckModel'] as _i9.TruckModelEndpoint)
                  .readAll(session),
        ),
        'read': _i1.MethodConnector(
          name: 'read',
          params: {
            'truckModelId': _i1.ParameterDescription(
              name: 'truckModelId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckModel'] as _i9.TruckModelEndpoint).read(
            session,
            params['truckModelId'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'truckModel': _i1.ParameterDescription(
              name: 'truckModel',
              type: _i1.getType<_i17.TruckModel>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckModel'] as _i9.TruckModelEndpoint).update(
            session,
            params['truckModel'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'truckModelId': _i1.ParameterDescription(
              name: 'truckModelId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['truckModel'] as _i9.TruckModelEndpoint).delete(
            session,
            params['truckModelId'],
          ),
        ),
      },
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i18.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i10.UserEndpoint).create(
            session,
            params['user'],
          ),
        ),
        'read': _i1.MethodConnector(
          name: 'read',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i10.UserEndpoint).read(
            session,
            userId: params['userId'],
          ),
        ),
        'readAll': _i1.MethodConnector(
          name: 'readAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i10.UserEndpoint).readAll(session),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i18.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i10.UserEndpoint).update(
            session,
            params['user'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i10.UserEndpoint).delete(
            session,
            userId: params['userId'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i19.Endpoints()..initializeEndpoints(server);
  }
}
