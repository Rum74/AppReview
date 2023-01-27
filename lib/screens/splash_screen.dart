import 'package:flutter/material.dart';
import 'package:riviu/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    redirecDetailScreen();
  }
  void redirecDetailScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height - 500),
                    Image.asset(
                      "assets/images/logo.png",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Ăn Khắp Nơi, Chơi Khắp Chốn',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400)),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo1.png",
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/images/logo2.png",
                    width: 40,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('App chính thức của Địa Điểm Ăn Uống và Thánh Riviu',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
              SizedBox(height: 10,)
            ]),
          ],
        ),
      ),
    );
  }
}
