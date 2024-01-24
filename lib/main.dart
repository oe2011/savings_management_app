import 'package:flutter/material.dart';
import 'package:flutter_application_1/router.dart';

/*
  最新のFlutterに対応するため、動画と少しコードが変わりました
*/

main() {
  final app = MyApp();
  runApp(app);
}

// アプリ全体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // home: const AccoutScreen(),
    );
  }
}