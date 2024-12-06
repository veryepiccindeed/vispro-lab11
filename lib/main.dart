import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator with Routes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => MainScreen(),
        '/first': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
      },
      initialRoute: '/', 
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;


  void _goToScreen(int index) {
    if (index == 0) {
      Navigator.pushNamed(context, '/first');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/second'); 
    } else if (index == 2) {
      Navigator.pushNamed(context, '/third'); 
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
