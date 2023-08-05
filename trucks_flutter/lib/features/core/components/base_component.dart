import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// extending consumerwidget which is a component of riverpod to manage state throughout the app
class BaseComponent extends ConsumerWidget {
  const BaseComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Placeholder();
  }
}
