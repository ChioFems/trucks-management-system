import 'package:serverpod/serverpod.dart';
import '../generated/driver.dart';

class DriverEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<Driver> create(Session session, Driver driver) async {
    await Driver.insert(session, driver);
    return driver;
  }

//returns driver details for logged in user
  Future<List<Driver>> readByUser(Session session) async {
    final userId = await session.auth.authenticatedUserId;

    if (userId == null) {
      return [];
    }

    return await Driver.find(
      session,
      where: (item) => item.userId.equals(userId),
    );
  }

  Future<Driver?> read(Session session, int driverId) async {
    return await Driver.findById(session, driverId);
  }

  Future<List<Driver>> readAll(Session session) async {
    return await Driver.find(session);
  }

  Future<Driver> update(Session session, Driver driver) async {
    await Driver.update(session, driver);
    return driver;
  }

  Future<void> delete(Session session, int driverId) async {
    await Driver.delete(session, where: (driver) => driver.id.equals(driverId));
  }
}
