import 'package:flutter/material.dart';

import '../core/app_assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SizedBox.square(
            dimension: 100, child: Image.asset(AppAssets.whiteLogo)),
      ),
    );
  }
}
