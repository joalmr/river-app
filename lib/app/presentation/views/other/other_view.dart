import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:river_app/config/widgets/secondary_button.dart';

class OtherView extends ConsumerWidget {
  const OtherView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Other'),
            ButtonSecondary(
              text: 'Volver',
              onPressed: () => context.pop(),
            )
          ],
        ),
      ),
    );
  }
}
