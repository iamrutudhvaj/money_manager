import 'package:flutter/material.dart';
import 'package:money_manager/src/constant/app_color.dart';
import 'package:money_manager/src/features/home/page/account_page.dart';
import 'package:money_manager/src/features/home/page/more_page.dart';
import 'package:money_manager/src/features/home/page/status_page.dart';
import 'package:money_manager/src/features/home/page/transfer_page.dart';
import 'package:money_manager/src/widgets/app_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomIndex = 0;

  List<Widget> pages = const [
    TransferPage(),
    StatusPage(),
    AccountPage(),
    MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      body: IndexedStack(
        index: bottomIndex,
        children: pages,
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        onTap: (value) {
          setState(() {
            bottomIndex = value;
          });
        },
        bottomIndex: bottomIndex,
      ),
    );
  }
}
