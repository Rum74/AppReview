import 'package:flutter/material.dart';
import 'package:riviu/screens/account_screen.dart';
import 'package:riviu/screens/add_screen.dart';
import 'package:riviu/screens/home_screen.dart';
import 'package:riviu/screens/notification_screen.dart';
import 'package:riviu/screens/video_screen.dart';

class MyHomeBottomNavBar extends StatelessWidget {
  const MyHomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 20, color: Colors.grey.shade300, spreadRadius: 1)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                child: Row(
                  children: [
                    buildContainerBottomNav(Icons.home_rounded),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                }),
            TextButton(
                child: Row(
                  children: [
                    buildContainerBottomNav(Icons.play_arrow_rounded),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Video()),
                  );
                }),
            TextButton(
                child: Row(
                  children: [
                    buildContainerBottomNav(Icons.add_rounded,
                        isSelected: true),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Add()),
                  );
                }),
            TextButton(
                child: Row(
                  children: [
                    buildContainerBottomNav(Icons.notifications_none_rounded),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NotificationScreen()),
                  );
                }),
            TextButton(
                child: Row(
                  children: [
                    buildContainerBottomNav(Icons.person_rounded),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Account()),
                  );
                }),
          ],
        ),
      ),
    );
  }

  Container buildContainerBottomNav(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.orange : Colors.white,
        shape: BoxShape.circle,
        boxShadow: isSelected
            ? [
                const BoxShadow(
                    color: Colors.grey, blurRadius: 10, spreadRadius: 1)
              ]
            : [],
      ),
      height: 50,
      width: 50,
      child: Icon(icon, color: isSelected ? Colors.white : Colors.grey),
    );
  }
}
