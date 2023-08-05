import 'package:serverpod/serverpod.dart';
import '../generated/user.dart';

class UserEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<User> create(Session session, User user) async {
    await User.insert(session, user);
    return user;
  }

  Future<User?> read(Session session, {required int userId}) async {
    User? user = await User.findById(session, userId);
    return user;
  }

  Future<List<User>> readAll(Session session) async {
    return await User.find(session);
  }

  Future<User> update(Session session, User user) async {
    await User.update(session, user);
    return user;
  }

  Future<void> delete(Session session, {required int userId}) async {
    await User.delete(session, where: (user) => user.id.equals(userId));
  }
}
