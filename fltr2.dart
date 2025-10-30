import 'package:flutter/material.dart';
void main() {
 runApp(MyLayoutApp());
}
class MyLayoutApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'Flutter Layout Demo',
 home: Scaffold(
 body: Stack(
 children: [
 // Background image
 Container(
 decoration: BoxDecoration(
 image: DecorationImage(
 image: AssetImage('assets/images/phone wallpaper.webp'),
 fit: BoxFit.cover,
 ),
 ),
 ),
 // Foreground content with margin
 Padding(
 padding: const EdgeInsets.symmetric(horizontal: 20.0),
 child: Center(
 child: Container(
 padding: EdgeInsets.all(20),
 decoration: BoxDecoration(
 color: Colors.white.withOpacity(0.85),
 borderRadius: BorderRadius.circular(20),
 ),
 child: Column(
 mainAxisSize: MainAxisSize.min,
 children: [
 Text(
 'Welcome to Flutter!',
 textAlign: TextAlign.center,
 style: TextStyle(
 fontSize: 50,
 fontWeight: FontWeight.bold,
 color: Colors.black87,
 ),
 ),
 SizedBox(height: 50),
 Row(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: [
 Column(
 children: [
 Icon(Icons.school, size: 75, color: Colors.blue),
 Text("Learn"),
 ],
 ),
 Column(
 children: [
 Icon(Icons.code, size: 75, color: Colors.green),
 Text("Build"),
 ],
 ),
 Column(
 children: [
 Icon(Icons.emoji_events, size: 75, color: Colors.orange),
 Text("Achieve"),
 ],
 ),
 ],
 ),
 SizedBox(height: 30),
 Text(
 'Using Row, Column, Stack in a beautiful layout!',
 textAlign: TextAlign.center,
 style: TextStyle(
 fontSize: 25,
 color: Colors.black87,
 fontStyle: FontStyle.italic,
 ),
 ),
 ],
 ),
 ),
 ),
 ),
 ],
 ),
 ),
 );
 }
}