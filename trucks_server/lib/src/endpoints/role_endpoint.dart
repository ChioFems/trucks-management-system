import 'package:serverpod/serverpod.dart';
import '../generated/role.dart';

class RoleEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<Role> create(Session session, Role role) async {
    await Role.insert(session, role);
    return role;
  }

  Future<Role?> read(Session session, int roleId) async {
    return await Role.findById(session, roleId);
  }

  Future<List<Role>> readAll(Session session) async {
    return await Role.find(session);
  }

  Future<Role> update(Session session, Role role) async {
    await Role.update(session, role);
    return role;
  }

  Future<void> delete(Session session, int roleId) async {
    await Role.delete(session, where: (role) => role.id.equals(roleId));
  }
}
