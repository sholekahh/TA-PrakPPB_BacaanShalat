import 'package:bacaan_sholat/page/ayat_kursi_page.dart';
import 'package:bacaan_sholat/page/main_page.dart';
import 'package:bacaan_sholat/page/profile.dart';
import 'package:flutter/material.dart';

class ButtonNavi extends StatefulWidget {
  @override
  State<ButtonNavi> createState() => _ButtonNaviState();
}

class _ButtonNaviState extends State<ButtonNavi> {
  int currentIndex = 0;
  final List<Widget> body = [MainPage(), AyatKursi(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.home, color: Colors.black),
              label: "Utama",
              activeIcon: Icon(Icons.home, color: Colors.yellow)),
          BottomNavigationBarItem(
              icon: Icon(Icons.amp_stories, color: Colors.black),
              label: "Ayat Kursi",
              activeIcon: Icon(Icons.amp_stories, color: Colors.yellow)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box, color: Colors.black),
              label: "Akun",
              activeIcon: Icon(Icons.account_box, color: Colors.yellow)),
        ],
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.amber,
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
