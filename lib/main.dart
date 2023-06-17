import 'package:flutter/material.dart';
import 'package:nested_navigation_example/utils/routes/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerConfig: AppRouter().config(),
    );
  }
}
