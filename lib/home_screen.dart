import 'package:dio_clean_architecture/services.dart';
import 'package:flutter/material.dart';

class DioHomeScreen extends StatelessWidget {
  const DioHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController num = TextEditingController();
    
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(controller: num,),
            ElevatedButton(
                onPressed: () => printSomething(int.parse(num.text)), child: const Text('print')),
          ],
        ),
      ),
    );
  }
}
