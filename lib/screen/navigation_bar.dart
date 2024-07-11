import 'package:flutter/material.dart';
import 'package:ihsan_ahmed_ecommerce/screen/home_screen.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF1D1D1D),
        unselectedItemColor: const Color(0xFFD7D7D7),
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/home.png",
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/second.png"),
            label: '카테고리',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/third.png"),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/fourth.png"),
            label: '마이페이지',
          ),
        ],
      ),
    );
  }
}
