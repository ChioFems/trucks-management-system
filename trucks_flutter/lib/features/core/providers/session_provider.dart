import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/core/models/session.dart';
import '/utils/api_client.dart';
import '/utils/singletons.dart';

class SessionProvider extends StateNotifier<Session> {
  final Ref ref;

  final sessionManager = singleton<ApiClient>().sessionManager;
  final client = singleton<ApiClient>().client;

  SessionProvider(this.ref, Session initial) : super(initial) {
    init();
  }

  init() {
    updateUser();
  }

  updateUser() async {
    final user = sessionManager.signedInUser;
    state = state.copyWith(user: user);
  }

  logout() async {
    await sessionManager.signOut();
    updateUser();
  }
}

final sessionProvider = StateNotifierProvider<SessionProvider, Session>(
  (ref) => SessionProvider(ref, Session()),
);
