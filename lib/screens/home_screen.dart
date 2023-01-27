import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:riviu/widgets/BottomNavigationBar.dart';
import 'package:riviu/widgets/CategoriesScroller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var _addcomment;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Đà Nẵng',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        icon: const FaIcon(
                          Icons.account_circle_rounded,
                          color: Colors.orange,
                          size: 30,
                        ),
                        onPressed: () {
                          print("oke");
                        })
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SafeArea(
                child: SingleChildScrollView(
              // physics: const BouncingScrollPhysics(),
              // scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  TextFormField(
                    // enabled: true,
                    //  readOnly: false,
                    //  enableInteractiveSelection: true,
                    controller: _addcomment,
                    decoration: InputDecoration(
                      hintText: 'Tìm Riviu, địa điểm,...',
                      filled: true,
                      fillColor: Colors.grey[200],
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          print("Send");
                        },
                      ),
                      contentPadding: const EdgeInsets.only(left: 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(style: BorderStyle.none)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(style: BorderStyle.none)),
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Lăn vào bếp',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Xem thêm',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SafeArea(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              CategoriesScroller(),
                              CategoriesScroller(),
                              CategoriesScroller(),
                              CategoriesScroller(),
                              CategoriesScroller(),
                              CategoriesScroller(),
                              CategoriesScroller(),
                              CategoriesScroller(),
                              CategoriesScroller(),
                              CategoriesScroller()
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Khám phá',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Theo dõi',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
      bottomNavigationBar: const MyHomeBottomNavBar(),
    );
  }
}
