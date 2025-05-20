import 'package:flutter/material.dart';
import '../widgets/header.dart';

class IngresantesPage extends StatelessWidget {
  const IngresantesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingresantes'),
        backgroundColor: Colors.green.shade700,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Header(),
          const SizedBox(height: 20),
          const Text(
            'Bienvenido Ingresante',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Center(
            child: Image.asset(
              'assets/images/ing1.jpeg',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
