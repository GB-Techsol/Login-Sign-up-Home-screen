import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('This is my home screen',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          ),
        ),
        
      ),
    );
  }
}
