import 'package:flutter/material.dart';
import 'package:riviu/widgets/BottomNavigationBar.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Account'),
      ),
      bottomNavigationBar: MyHomeBottomNavBar(),
    );
  }
}