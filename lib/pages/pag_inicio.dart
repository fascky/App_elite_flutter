import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/category_card.dart';
import '../widgets/bottom_nav_bar.dart';

class Inico extends StatelessWidget {
  const Inico({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Text(
              'Buen día,',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              'NOMBRE COMPLETO',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 51, 51, 51),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          const Inico(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              children: const [
                _SectionTitle(title: 'Actividades'),
                SizedBox(height: 30),
                _ActivitiesCarousel(),
                SizedBox(height: 30),
                _TabsSection(),
              ],
            ),
          ),
          const BottomNavBar(),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class _ActivitiesCarousel extends StatelessWidget {
  const _ActivitiesCarousel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoryCard(
            imagePath: 'assets/images/picnic1.jpg',
            width: 260,
            height: 180,
          ),
          SizedBox(width: 10),
          CategoryCard(
            imagePath: 'assets/images/picnic2.jpg',
            width: 260,
            height: 150,
          ),
          SizedBox(width: 10),
          CategoryCard(
            imagePath: 'assets/images/actividades2.jpg',
            width: 260,
            height: 150,
          ),
        ],
      ),
    );
  }
}

class _TabsSection extends StatelessWidget {
  const _TabsSection();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TabBar(
            indicatorColor: Color.fromARGB(255, 12, 60, 13),
            labelColor: Color.fromARGB(255, 25, 44, 24),
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            tabs: [Tab(text: 'Ingresantes'), Tab(text: 'Profesores')],
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 380,
            child: TabBarView(
              children: const [
                _Carousel(
                  images: [
                    'assets/images/alumna.jpg',
                    'assets/images/alumna.jpg',
                    'assets/images/alumna.jpg',
                  ],
                ),
                _Carousel(
                  images: [
                    'assets/images/alumna.jpg',
                    'assets/images/alumna.jpg',
                    'assets/images/alumna.jpg',
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Carousel extends StatelessWidget {
  final List<String> images;
  const _Carousel({required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        separatorBuilder: (_, __) => const SizedBox(width: 20),
        itemBuilder: (context, index) {
          return CategoryCard(
            imagePath: images[index],
            width: 220,
            height: 60,
          );
        },
      ),
    );
  }
}
