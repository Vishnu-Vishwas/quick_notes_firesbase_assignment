import 'package:flutter/material.dart';
import 'package:quick_notes/core/firebase/firebase_initializer.dart';
import 'package:quick_notes/core/theme/app_theme.dart';
import 'core/di/injector.dart';
import 'core/navigation/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseInitializer.firebaseInit();
  await Injector.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRoute = AppRouter();
    return MaterialApp.router(
      themeMode: ThemeMode.dark,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      debugShowCheckedModeBanner: false,
      routerConfig: appRoute.config(),
    );
  }
}
