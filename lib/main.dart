import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_flutter/core/dependency_injection/locator.dart';
import 'package:login_flutter/core/dependency_injection/setup_snackbar_ui.dart';
import 'package:login_flutter/core/router/router.dart' as router;

void main() async {
  runApp(
    const ProviderScope(child: MainApp()),
  );
  await dotenv.load();
  setupLocator();
  setupSnackbarUi();
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
