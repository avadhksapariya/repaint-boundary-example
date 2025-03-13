import 'package:flutter/material.dart';
import 'package:repaint_boundry_example/animated_counter.dart';
import 'package:repaint_boundry_example/heavy_painter.dart';

class ScreenRepaintBoundary extends StatefulWidget {
  const ScreenRepaintBoundary({super.key});

  @override
  State<ScreenRepaintBoundary> createState() => _ScreenRepaintBoundaryState();
}

class _ScreenRepaintBoundaryState extends State<ScreenRepaintBoundary> {
  bool useRepaintBoundary = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text("Repaint Boundary Toggle Example"),
      ),*/
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Toggle RepaintBoundary mode
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    useRepaintBoundary = !useRepaintBoundary;
                  });
                },
                child: Text(useRepaintBoundary ? "Disable RepaintBoundary" : "Enable RepaintBoundary"),
              ),
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.all(20.0),
                child: useRepaintBoundary
                    ? RepaintBoundary(
                        child: CustomPaint(
                          painter: HeavyPainter(),
                        ),
                      )
                    : CustomPaint(
                        painter: HeavyPainter(),
                      ),
              ),

              // An unrelated widget that cause frequent rebuilds
              const AnimatedCounter(),
            ],
          ),
        ),
      ),
    );
  }
}
