import 'package:flutter/material.dart';
import 'package:m2/components/drawer.dart';
import 'package:m2/components/exercices/exercice_1.dart';
import 'package:m2/components/exercices/exercice_2.dart';
import 'package:m2/screens/profile/index.dart';
import 'package:m2/components/carousel/index.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  List<Widget> list = [

    const CarouselImages(),
    const Exercice1(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Flutter'),
      ),
      drawer: const CustomDrawer(),
      body: list[index],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        iconSize: 48,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
      ),
    );
  }
}
