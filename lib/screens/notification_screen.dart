import 'package:flutter/material.dart';
import 'package:riviu/widgets/BottomNavigationBar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Notification'),
      ),
      bottomNavigationBar: MyHomeBottomNavBar(),
    );
  }
}