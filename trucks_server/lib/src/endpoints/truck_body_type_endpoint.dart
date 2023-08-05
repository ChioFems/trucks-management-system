import 'package:serverpod/serverpod.dart';
import '../generated/truck_body_type.dart';

class TruckBodyTypeEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<TruckBodyType> create(
      Session session, TruckBodyType truckBodyType) async {
    await TruckBodyType.insert(session, truckBodyType);
    return truckBodyType;
  }

  Future<TruckBodyType?> read(Session session, int truckBodyTypeId) async {
    return await TruckBodyType.findById(session, truckBodyTypeId);
  }

  Future<List<TruckBodyType>> readAll(Session session) async {
    return await TruckBodyType.find(session);
  }

  Future<TruckBodyType> update(
      Session session, TruckBodyType truckBodyType) async {
    await TruckBodyType.update(session, truckBodyType);
    return truckBodyType;
  }

  Future<void> delete(Session session, int truckBodyTypeId) async {
    await TruckBodyType.delete(session,
        where: (truckBodyType) => truckBodyType.id.equals(truckBodyTypeId));
  }
}
