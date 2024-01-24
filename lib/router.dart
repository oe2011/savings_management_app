import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/home.dart';
final goRouter = GoRouter(
  // アプリが起動した時
  initialLocation: '/home',
  // パスと画面の組み合わせ
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const Home(),
        );
      },
    ),
  ],
  // 遷移ページがないなどのエラーが発生した時に、このページに行く
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);