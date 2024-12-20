import 'package:flutter/material.dart';
import 'package:smooth_scroll_multiplatform/smooth_scroll_multiplatform.dart';

// flutter run -t example/example.dart to run app

void main() {
  runApp(const SmoothScrollDemoApp());
}

class SmoothScrollDemoApp extends StatelessWidget {
  const SmoothScrollDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smooth Scroll Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SmoothScrollDemoScreen(),
    );
  }
}

class SmoothScrollDemoScreen extends StatelessWidget {
  const SmoothScrollDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiplatform Smooth Scroll Demo'),
      ),
      body: DynMouseScroll(
        durationMS: 500, // Animation duration in milliseconds
        scrollSpeed: 4.4, // Scroll speed multiplier
        animationCurve: Curves.easeOutQuart, // Animation curve for smoothness
        builder: (context, controller, physics) {
          return ListView.builder(
            controller: controller, // Use the provided controller
            physics: physics, // Use the updated physics
            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
                subtitle: const Text('Smooth scrolling demo item'),
                leading: const Icon(Icons.star),
              );
            },
          );
        },
      ),
    );
  }
}
