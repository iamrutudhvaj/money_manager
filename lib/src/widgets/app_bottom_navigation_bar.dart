import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_manager/src/constant/app_color.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int bottomIndex;
  final Function(int value) onTap;

  const AppBottomNavigationBar({
    super.key,
    required this.onTap,
    required this.bottomIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: AppColor.white30),
        ),
      ),
      child: Theme(
        data: ThemeData(
          splashColor: AppColor.transparent,
          highlightColor: AppColor.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColor.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColor.primaryColor,
          unselectedItemColor: AppColor.white30,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: bottomIndex,
          selectedLabelStyle: const TextStyle(fontSize: 14),
          unselectedLabelStyle: const TextStyle(fontSize: 14),
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.book,
                size: 18,
              ),
              label: 'Trans.',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.chartSimple,
                size: 18,
              ),
              label: 'Status',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.database,
                size: 18,
              ),
              label: 'Accounts',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.ellipsis,
                size: 18,
              ),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}
