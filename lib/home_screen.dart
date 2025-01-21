import 'package:dio_clean_architecture/services.dart';
import 'package:flutter/material.dart';

class DioHomeScreen extends StatelessWidget {
  const DioHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: ElevatedButton(onPressed: ()=> printSomething(1), child: const Text('print')),),
    );
  }
}