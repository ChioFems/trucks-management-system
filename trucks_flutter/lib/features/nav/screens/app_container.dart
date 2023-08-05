import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trucks_flutter/features/auth/screens/auth_screen.dart';
import 'package:trucks_flutter/features/core/providers/session_provider.dart';
// import 'package:trucks_flutter/features/nav/screens/site_layout.dart';
import 'package:trucks_flutter/features/nav/screens/site_layout_bk.dart';

import '../../core/components/base_component.dart';

class AppContainer extends BaseComponent {
  const AppContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(sessionProvider).isAuthenticated
        // TODO: site layout contain auto refresh after login
        // ? SiteLayout()
        ? SiteLayout2()
        : AuthScreen();
  }
}
