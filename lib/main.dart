import 'package:flutter/material.dart';
import 'package:kloster/routes/routes.dart';
// import 'package:kloster/screens/Location.dart';
// import 'package:kloster/screens/Profile.dart';
// import 'package:kloster/screens/feedback.dart';
import 'package:kloster/screens/login.dart';
import 'package:kloster/screens/permissions_request.dart';
import 'package:kloster/screens/register.dart';
// import 'package:kloster/screens/settings.dart';

/// [main] is the entry point of the application.
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

/// [MyApp] is the main class of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kloster',
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.login: (context) => LoginPage(),
        Routes.register: (context) => const RegisterPage(),
        Routes.permissionsRequest: (context) => const PermissionsRequestPage(),
      },
      // home: LoginPage(),
      home: LoginPage(),
    );
  }
}
