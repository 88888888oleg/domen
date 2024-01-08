import 'package:domen/config/start_config.dart';
import 'package:domen/features/about_us/about_us.dart';
import 'package:domen/features/contact_us/contact_us.dart';
import 'package:domen/features/dashboard/dasboard.dart';
import 'package:domen/features/privaci_policy.dart';
import 'package:domen/features/terms_of_use/terms_of_use.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  await StartConfig.configureApp();
  runApp(const MyApp());
}
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Dashboard();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'contact_us',
          builder: (BuildContext context, GoRouterState state) {
            return const ContactUs();
          },
        ),
        GoRoute(
          path: 'about_us',
          builder: (BuildContext context, GoRouterState state) {
            return const AboutUs();
          },
        ),
        GoRoute(
          path: 'terms_of_use',
          builder: (BuildContext context, GoRouterState state) {
            return const TermsOfUse();
          },
        ),
        GoRoute(
          path: 'privacy_policy',
          builder: (BuildContext context, GoRouterState state) {
            return const PrivacyPolicy();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Dashboard();
  }
}
