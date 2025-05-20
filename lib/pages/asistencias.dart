import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/bottom_nav_bar.dart';

class AsistenciasPage extends StatelessWidget {
  const AsistenciasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 32, 47),
      body: Column(
        children: [
          const Header(), // Aquí se agrega el Header
          Expanded(
            child: Center(
              child: Text(
                "Página de Asistencias",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const BottomNavBar(),
        ],
      ),
    );
  }
}
