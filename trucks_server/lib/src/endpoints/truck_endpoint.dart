import 'package:serverpod/serverpod.dart';
import '../generated/truck.dart';

class TruckEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<bool> create(
    Session session, {
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
  }) async {
    final userId = await session.auth.authenticatedUserId;

    final truck = Truck(
      truckName: truckName,
      truckModelId: truckModelId,
      registrationNumber: registrationNumber,
      registrationDate: registrationDate,
      truckCc: truckCc,
      status: status,
      modifiedBy: userId!,
      createdDate: createdDate,
      modifiedDate: modifiedDate,
      bodyTypeId: bodyTypeId,
      cargoTypeId: cargoTypeId,
      maxLoadingCapacity: maxLoadingCapacity,
      defaultTruckLocation: defaultTruckLocation,
      fuelConsumptionPerKm: fuelConsumptionPerKm,
    );

    await Truck.insert(session, truck);
    return true;
  }

  Future<Truck?> read(Session session, int truckId) async {
    return await Truck.findById(session, truckId);
  }

  Future<List<Truck>> readAll(Session session) async {
    return await Truck.find(session);
  }

  Future<Truck> update(Session session, Truck truck) async {
    await Truck.update(session, truck);
    return truck;
  }

  Future<void> delete(Session session, int truckId) async {
    await Truck.delete(session, where: (truck) => truck.id.equals(truckId));
  }
}
