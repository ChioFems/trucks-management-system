import 'package:serverpod/serverpod.dart';
import '../generated/truck_model.dart';

class TruckModelEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  // Future<TruckModel> create(Session session, TruckModel truckModel) async {
  //   await TruckModel.insert(session, truckModel);
  //   return truckModel;
  // }

  Future<bool> create(
    Session session, {
    required String brandName,
    required String modelName,
    required String status,
    required int modifiedBy,
    required DateTime createdDate,
    required DateTime modifiedDate,
  }) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) return false;

    final truckModel = TruckModel(
      brandName: brandName,
      modelName: modelName,
      status: status,
      modifiedBy: userId,
      createdDate: createdDate,
      modifiedDate: modifiedDate,
    );

    await TruckModel.insert(session, truckModel);
    return true;
  }

  Future<List<TruckModel>> readAll(Session session) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) return [];

    // returns list of all data
    return await TruckModel.find(session);
    // returns list of all data, respectively for the logged in user (example safari/trips data)
    // return await TripModel.find(session,
    //     where: (item) => item.userId.equals(userId));
  }

  Future<TruckModel?> read(Session session, int truckModelId) async {
    return await TruckModel.findById(session, truckModelId);
  }

  Future<TruckModel> update(Session session, TruckModel truckModel) async {
    await TruckModel.update(session, truckModel);
    return truckModel;
  }

  // Future<void> delete(Session session, int truckModelId) async {
  //   await TruckModel.delete(session,
  //       where: (truckModel) => truckModel.id.equals(truckModelId));
  // }

  Future<bool> delete(Session session, int truckModelId) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) return false;
    TruckModel.delete(session, where: (item) => item.id.equals(truckModelId));

    return false;
  }
}
