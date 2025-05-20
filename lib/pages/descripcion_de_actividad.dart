import 'package:flutter/material.dart';
import '../widgets/header.dart';

class DescripcionDeActividades extends StatelessWidget {
  const DescripcionDeActividades({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFF2F5EF), Color(0xFFF1F5EF)],
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Header(),
                const SizedBox(height: 20),
                _buildMainImage(),
                const SizedBox(height: 20),
                const Text(
                  "𝐌𝐀𝐑𝐀𝐓Ó𝐍 𝐃𝐄 𝐄𝐒𝐓𝐔𝐃𝐈𝐎𝐒",
                  style: TextStyle(
                    color: Color(0xFF56BF61),
                    fontSize: 18,
                    fontFamily: 'EB Garamond',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  '¡¡¡Ey Élitino, tú que estás pensando en postular a la UNP para lograr tu ingreso anhelado, '
                  'pues te invitamos a participar de nuestro MARATÓN DE ESTUDIOS de medicina, ciencias o letras, '
                  'donde podrás repotenciar y elevar tus estudios. Así que no esperes más y ven a formar parte '
                  'de la Élite del norte!!!',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Anaheim',
                  ),
                ),
                const SizedBox(height: 24),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '𝐅𝐄𝐂𝐇𝐀: ',
                        style: TextStyle(
                          color: Color(0xFF5AD567),
                          fontSize: 16,
                          fontFamily: 'Anaheim',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Domingo 09 de MARZO 2025\n\n',
                      ),
                      TextSpan(
                        text: '𝐇𝐎𝐑𝐀𝐑𝐈𝐎: ',
                        style: TextStyle(
                          color: Color(0xFF75C86F),
                          fontSize: 16,
                          fontFamily: 'Anaheim',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '(08:00 A.M. - 06:00 P.M)\n\n',
                      ),
                      TextSpan(
                        text: '𝐂𝐎𝐒𝐓𝐎: ',
                        style: TextStyle(
                          color: Color(0xFF83E37D),
                          fontSize: 16,
                          fontFamily: 'Anaheim',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'S/. 20.00',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Anaheim',
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  '¡¡¡Qué estás esperando!!! Prepárate en la Academia Estudio Élite y conviértete '
                  'en el próximo ingresante de la UNP',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Anaheim',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD9D9D9),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 6,
                    ),
                    onPressed: () {
                      // Redirigir a la página de inscripción
                      Navigator.pushNamed(context, '/inscripcion');
                    },
                    child: const Text(
                      'INSCRIBIRME',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'EB Garamond',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMainImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/images/maraton.jpeg',
        height: 305,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
