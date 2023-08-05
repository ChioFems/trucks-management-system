import 'package:serverpod/serverpod.dart';
import '../generated/truck_cargo_type.dart';

class TruckCargoTypeEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<TruckCargoType> create(
      Session session, TruckCargoType truckCargoType) async {
    await TruckCargoType.insert(session, truckCargoType);
    return truckCargoType;
  }

  Future<TruckCargoType?> read(Session session, int truckCargoTypeId) async {
    return await TruckCargoType.findById(session, truckCargoTypeId);
  }

  Future<List<TruckCargoType>> readAll(Session session) async {
    return await TruckCargoType.find(session);
  }

  Future<TruckCargoType> update(
      Session session, TruckCargoType truckCargoType) async {
    await TruckCargoType.update(session, truckCargoType);
    return truckCargoType;
  }

  Future<void> delete(Session session, int truckCargoTypeId) async {
    await TruckCargoType.delete(session,
        where: (truckCargoType) => truckCargoType.id.equals(truckCargoTypeId));
  }
}
