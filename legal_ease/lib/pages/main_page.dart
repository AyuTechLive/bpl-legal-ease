import 'package:flutter/material.dart';
import 'package:legal_ease/component/app_bar.dart';
import 'package:legal_ease/pages/demo_page.dart';
import 'package:legal_ease/pages/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8D8D8E).withOpacity(0.42),
      appBar: Appbar(),
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/image/home.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/image/calender.png'),
              label: 'Calendar'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/image/order.png'), label: 'Verdict'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/image/information.png'),
              label: 'Information'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/image/support.png'), label: 'Support')
        ],
        currentIndex: currentindex,
        onTap: (index) {
          print(index);
          setState(() {
            currentindex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        backgroundColor: Colors.black,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Hello word'),
    ),
    Center(
      child: Text('FUCK world'),
    ),
    Center(
      child: Text('FUCK world'),
    ),
    Center(
      child: Text('FUCK world'),
    ),
  ];
}
