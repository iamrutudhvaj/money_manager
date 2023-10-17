import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:money_manager/src/constant/app_color.dart';
import 'package:money_manager/src/router/app_router.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: AppColor.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.transparent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.star,
                size: 20,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 25,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.bars,
                size: 20,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Align(
              alignment: Alignment.topLeft,
              child: TabBar(
                isScrollable: true,
                splashFactory: NoSplash.splashFactory,
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  return states.contains(MaterialState.focused)
                      ? null
                      : AppColor.transparent;
                }),
                labelStyle: const TextStyle(fontSize: 17),
                tabs: const [
                  Tab(
                    text: 'Daily',
                  ),
                  Tab(
                    text: 'Calender',
                  ),
                  Tab(
                    text: 'Monthly',
                  ),
                  Tab(
                    text: 'Total',
                  ),
                  Tab(
                    text: 'Note',
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(AppRoute.transaction.path);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
