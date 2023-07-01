import 'package:flutter/material.dart';
import 'package:login_flutter/core/router/router.dart' as router;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: router.Router.loginView,
      onGenerateRoute: router.Router.generateRoute,
    );
  }
}
