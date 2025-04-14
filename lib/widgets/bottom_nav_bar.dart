import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFF63A85E),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavIcon("https://img.icons8.com/external-flatart-icons-solid-flatarticons/64/1A1A1A/external-home-contact-flatart-icons-solid-flatarticons-1.png", 0),
          _buildNavIcon("https://img.icons8.com/metro/26/1A1A1A/books.png", 1),
          _buildNavIcon("https://img.icons8.com/ios-filled/50/test-passed.png", 2),
        ],
      ),
    );
  }

  Widget _buildNavIcon(String imageUrl, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (isSelected)
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          Image.network(
            imageUrl,
            width: 30,
            height: 30,
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
