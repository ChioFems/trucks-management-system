import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trucks_flutter/features/core/components/base_screen.dart';
import '/features/core/providers/session_provider.dart';

import '../../../utils/api_client.dart';
import '../../../utils/singletons.dart';
import 'custom_serverpod_auth_screen.dart';

class AuthScreen extends BaseScreen {
  const AuthScreen({super.key});

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    return Center(
      child: CustomServerpodAuthScreen(
          caller: singleton<ApiClient>().client.modules.auth,
          onSignedIn: () {
            ref.read(sessionProvider.notifier).updateUser();
          }),
    );
  }
}
