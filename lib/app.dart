import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/pag_inicio.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/inicio': (context) => const HomePage(),
      },
    );
  }
}
