import 'package:serverpod/serverpod.dart';
import '../generated/truck_driver.dart';

class TruckDriverEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<bool> create(
    Session session, {
    required int truckId,
    required int driverId,
    required String truckStatus,
    required int modifiedBy,
    required DateTime createdDate,
    required DateTime modifiedDate,
  }) async {
    final userId = await session.auth.authenticatedUserId;

    final truck = TruckDriver(
      truckId: truckId,
      driverId: driverId,
      truckStatus: truckStatus,
      modifiedBy: userId!,
      createdDate: createdDate,
      modifiedDate: modifiedDate,
    );

    await TruckDriver.insert(session, truck);
    return true;
  }

  // Future<TruckDriver> create(Session session, TruckDriver truckDriver) async {
  //   await TruckDriver.insert(session, truckDriver);
  //   return truckDriver;
  // }

// returns details filtered by driver
  Future<List<TruckDriver>> readByDriver(Session session, int driverId) async {
    final userId = await session.auth.authenticatedUserId;

    if (userId == null) {
      return [];
    }

    return await TruckDriver.find(session, where: (item) => item.driverId.equals(userId) & item.driverId.equals(driverId));
  }

  Future<TruckDriver?> read(Session session, int truckDriverId) async {
    return await TruckDriver.findById(session, truckDriverId);
  }

  Future<List<TruckDriver>> readAll(Session session) async {
    return await TruckDriver.find(session);
  }

  Future<TruckDriver> update(Session session, TruckDriver truckDriver) async {
    await TruckDriver.update(session, truckDriver);
    return truckDriver;
  }

  Future<void> delete(Session session, int truckDriverId) async {
    await TruckDriver.delete(session,
        where: (truckDriver) => truckDriver.id.equals(truckDriverId));
  }
}
