/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'driver.dart' as _i2;
import 'example.dart' as _i3;
import 'role.dart' as _i4;
import 'truck.dart' as _i5;
import 'truck_body_type.dart' as _i6;
import 'truck_cargo_type.dart' as _i7;
import 'truck_driver.dart' as _i8;
import 'truck_model.dart' as _i9;
import 'user.dart' as _i10;
import 'package:trucks_client/src/protocol/driver.dart' as _i11;
import 'package:trucks_client/src/protocol/role.dart' as _i12;
import 'package:trucks_client/src/protocol/truck_body_type.dart' as _i13;
import 'package:trucks_client/src/protocol/truck_cargo_type.dart' as _i14;
import 'package:trucks_client/src/protocol/truck_driver.dart' as _i15;
import 'package:trucks_client/src/protocol/truck.dart' as _i16;
import 'package:trucks_client/src/protocol/truck_model.dart' as _i17;
import 'package:trucks_client/src/protocol/user.dart' as _i18;
import 'package:serverpod_auth_client/module.dart' as _i19;
export 'driver.dart';
export 'example.dart';
export 'role.dart';
export 'truck.dart';
export 'truck_body_type.dart';
export 'truck_cargo_type.dart';
export 'truck_driver.dart';
export 'truck_model.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Driver) {
      return _i2.Driver.fromJson(data, this) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data, this) as T;
    }
    if (t == _i4.Role) {
      return _i4.Role.fromJson(data, this) as T;
    }
    if (t == _i5.Truck) {
      return _i5.Truck.fromJson(data, this) as T;
    }
    if (t == _i6.TruckBodyType) {
      return _i6.TruckBodyType.fromJson(data, this) as T;
    }
    if (t == _i7.TruckCargoType) {
      return _i7.TruckCargoType.fromJson(data, this) as T;
    }
    if (t == _i8.TruckDriver) {
      return _i8.TruckDriver.fromJson(data, this) as T;
    }
    if (t == _i9.TruckModel) {
      return _i9.TruckModel.fromJson(data, this) as T;
    }
    if (t == _i10.User) {
      return _i10.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Driver?>()) {
      return (data != null ? _i2.Driver.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Role?>()) {
      return (data != null ? _i4.Role.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Truck?>()) {
      return (data != null ? _i5.Truck.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.TruckBodyType?>()) {
      return (data != null ? _i6.TruckBodyType.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i7.TruckCargoType?>()) {
      return (data != null ? _i7.TruckCargoType.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i8.TruckDriver?>()) {
      return (data != null ? _i8.TruckDriver.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.TruckModel?>()) {
      return (data != null ? _i9.TruckModel.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.User?>()) {
      return (data != null ? _i10.User.fromJson(data, this) : null) as T;
    }
    if (t == List<_i11.Driver>) {
      return (data as List).map((e) => deserialize<_i11.Driver>(e)).toList()
          as dynamic;
    }
    if (t == List<_i12.Role>) {
      return (data as List).map((e) => deserialize<_i12.Role>(e)).toList()
          as dynamic;
    }
    if (t == List<_i13.TruckBodyType>) {
      return (data as List)
          .map((e) => deserialize<_i13.TruckBodyType>(e))
          .toList() as dynamic;
    }
    if (t == List<_i14.TruckCargoType>) {
      return (data as List)
          .map((e) => deserialize<_i14.TruckCargoType>(e))
          .toList() as dynamic;
    }
    if (t == List<_i15.TruckDriver>) {
      return (data as List)
          .map((e) => deserialize<_i15.TruckDriver>(e))
          .toList() as dynamic;
    }
    if (t == List<_i16.Truck>) {
      return (data as List).map((e) => deserialize<_i16.Truck>(e)).toList()
          as dynamic;
    }
    if (t == List<_i17.TruckModel>) {
      return (data as List).map((e) => deserialize<_i17.TruckModel>(e)).toList()
          as dynamic;
    }
    if (t == List<_i18.User>) {
      return (data as List).map((e) => deserialize<_i18.User>(e)).toList()
          as dynamic;
    }
    try {
      return _i19.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i19.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.Driver) {
      return 'Driver';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Role) {
      return 'Role';
    }
    if (data is _i5.Truck) {
      return 'Truck';
    }
    if (data is _i6.TruckBodyType) {
      return 'TruckBodyType';
    }
    if (data is _i7.TruckCargoType) {
      return 'TruckCargoType';
    }
    if (data is _i8.TruckDriver) {
      return 'TruckDriver';
    }
    if (data is _i9.TruckModel) {
      return 'TruckModel';
    }
    if (data is _i10.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i19.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Driver') {
      return deserialize<_i2.Driver>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Role') {
      return deserialize<_i4.Role>(data['data']);
    }
    if (data['className'] == 'Truck') {
      return deserialize<_i5.Truck>(data['data']);
    }
    if (data['className'] == 'TruckBodyType') {
      return deserialize<_i6.TruckBodyType>(data['data']);
    }
    if (data['className'] == 'TruckCargoType') {
      return deserialize<_i7.TruckCargoType>(data['data']);
    }
    if (data['className'] == 'TruckDriver') {
      return deserialize<_i8.TruckDriver>(data['data']);
    }
    if (data['className'] == 'TruckModel') {
      return deserialize<_i9.TruckModel>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i10.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
