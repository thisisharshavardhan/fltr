import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Widgets Example")),
//         body: Center(
//           child: Column(
//             children: [
//               Text("Hello Flutter"),
//               Image.network("https://example.com/img.jpg"),
//               Container(width: 100, height: 100, color: Colors.green),
//               ElevatedButton(onPressed: () {}, child: Text("Click")),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("KHV")),
//         body: Column(
//           children: [
//             Text("Helloooo"),
//             Image.network(
//               "https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU",
//               width: 100,
//               height: 100,
//             ),
//             Text("Fucking Working"),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Profile Card',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile Card'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile picture
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              const SizedBox(height: 20),
              // Name
              const Text(
                'Amulya',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              // Profession
              const Text(
                'Flutter Beginner',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              const SizedBox(height: 20),
              // Contact Card
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 4),
                  ],
                ),
                child: Row(
                  children: const [
                    Icon(Icons.phone, color: Colors.green),
                    SizedBox(width: 10),
                    Text('+91 9876543210', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 4),
                  ],
                ),
                child: Row(
                  children: const [
                    Icon(Icons.email, color: Colors.redAccent),
                    SizedBox(width: 10),
                    Text('amulya@example.com', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
