import 'package:dio_clean_architecture/dio_home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: DioApiCall()));
}

class DioApiCall extends StatelessWidget {
  const DioApiCall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const DioHomeScreen(),
    );
  }
}
