import 'package:flutter/material.dart';
import 'package:riviu/widgets/BottomNavigationBar.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Add'),
      ),
      bottomNavigationBar: MyHomeBottomNavBar(),
    );
  }
}