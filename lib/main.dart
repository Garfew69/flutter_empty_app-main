import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.pink[100], // 💗 สีพื้นหลังของ Scaffold
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black87), // สีข้อความหลัก
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageSection(image: 'assets/images/Feww.jpg'), // 👉 เปลี่ยนเป็น path จริงของคุณ
          SizedBox(height: 16),
          Center(
            child: Text('Hello kittinan!'),
          ),
        ],
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 600,
      fit: BoxFit.cover,
    );
  }
}
