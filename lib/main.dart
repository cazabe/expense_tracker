import 'package:expense_tracker/config/router/app_router.dart';
import 'package:expense_tracker/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme().getTheme(),
      title: 'Flutter Widgets app',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
