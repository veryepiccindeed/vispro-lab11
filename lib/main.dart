import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';

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

  // Method untuk menavigasi ke FirstScreen atau SecondScreen
  void _goToScreen(int index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FirstScreen()), // Navigasi ke FirstScreen
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondScreen()), // Navigasi ke SecondScreen
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
        child: currentPageIndex == 0
            ? ElevatedButton(
                onPressed: () {
                  _goToScreen(0); // Masuk ke First Screen
                },
                child: Text('Go to First Screen'),
              )
            : ElevatedButton(
                onPressed: () {
                  _goToScreen(1); // Masuk ke Second Screen
                },
                child: Text('Go to Second Screen'),
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
        ],
      ),
    );
  }
}
