import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart'; // Impor ThirdScreen

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator with Push and Pop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(), // MainScreen will be the first screen
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;

  // Method untuk menavigasi ke layar sesuai index
  void _goToScreen(int index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FirstScreen()), // Navigasi ke FirstScreen
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondScreen()), // Navigasi ke SecondScreen
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ThirdScreen()), // Navigasi ke ThirdScreen
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation with Push and Pop'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _goToScreen(currentPageIndex); // Navigasi berdasarkan tab yang aktif
          },
          child: Text(
            currentPageIndex == 0
                ? 'Go to First Screen'
                : currentPageIndex == 1
                    ? 'Go to Second Screen'
                    : 'Go to Third Screen',
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'First Screen',
          ),
          NavigationDestination(
            icon: Icon(Icons.navigate_next),
            label: 'Second Screen',
          ),
          NavigationDestination(
            icon: Icon(Icons.rocket_launch),
            label: 'Third Screen',
          ),
        ],
      ),
    );
  }
}
