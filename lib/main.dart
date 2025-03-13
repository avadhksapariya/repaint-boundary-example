import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:repaint_boundry_example/screen_repaint_boundary.dart';

void main() {
  debugRepaintRainbowEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: true,
      title: 'Flutter Repaint Boundary',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ScreenRepaintBoundary(),
    );
  }
}
