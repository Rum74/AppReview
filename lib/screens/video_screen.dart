import 'package:flutter/material.dart';
import 'package:riviu/widgets/BottomNavigationBar.dart';

class Video extends StatelessWidget {
  const Video({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Video'),
      ),
      bottomNavigationBar: MyHomeBottomNavBar(),
    );
  }
}
