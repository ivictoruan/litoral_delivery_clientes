import 'package:flutter/material.dart';

import 'core/ui/theme/theme_config.dart';
import 'pages/auth/login/login_page.dart';
import 'pages/auth/register/register_page.dart';
import 'pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        title: "Litoral Delivery - Clientes",
        routes: {
          "/": (context) => const HomePage(),
          "/register": (context) => const RegisterPage(),
          "/login": (context) => const LoginPage()
        },
      );
}
