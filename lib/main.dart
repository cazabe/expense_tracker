import 'package:expense_tracker/config/constants/enviroment.dart';
import 'package:expense_tracker/config/router/app_router.dart';
import 'package:expense_tracker/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await Enviroment.initEnviroment();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme().getTheme(),
      title: 'Expense Tracker',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
