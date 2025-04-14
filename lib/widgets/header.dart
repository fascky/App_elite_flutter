import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Menú y título
          Row(
            children: [
              IconButton(
                icon: Image.network(
                  "https://img.icons8.com/ios-filled/50/menu--v6.png",
                  width: 26,
                  height: 26,
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, color: Colors.red),
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 8),
              const Text(
                'ELITE',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 27, 72, 29),
                ),
              ),
            ],
          ),

           //perfil
          const CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage('assets/images/icono2.png'),
          ),
        ],
      ),
    );
  }
}
