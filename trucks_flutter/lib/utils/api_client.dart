import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:trucks_client/trucks_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

abstract class ApiClient {
  late SessionManager sessionManager;
  late Client client;

  Future<void> init();
}

class ApiClientImplementation extends ApiClient {
  @override
  Future<void> init() async {
    // Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
    client = Client(
      'http://localhost:8080/',
      authenticationKeyManager: FlutterAuthenticationKeyManager(),
    )..connectivityMonitor = FlutterConnectivityMonitor();

    sessionManager = SessionManager(caller: client.modules.auth);
    await sessionManager.initialize();
  }
}
