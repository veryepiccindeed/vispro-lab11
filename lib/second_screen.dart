import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Kembali ke MainScreen dengan Navigator.pop
            Navigator.pop(context); // Kembali ke MainScreen
          },
          child: Text('Go Back'), // Tombol untuk kembali
        ),
      ),
    );
  }
}
