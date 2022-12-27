import 'package:atomic_design/fundation/color_fundation.dart';
import 'package:flutter/material.dart';

class OurFooter extends StatelessWidget {

  final List<BottomNavigationBarItem>? bottomNavigationBar;
  final Icon iconLeft;
  final Icon iconRight;

  const OurFooter({super.key, 
    this.iconRight = const Icon(Icons.home_rounded),
    this.iconLeft = const Icon(Icons.school_rounded), 
    this.bottomNavigationBar
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.0,
        child: BottomNavigationBar(
          items: bottomNavigationBar ?? <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: iconLeft,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: iconRight,
              label: 'School',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: selectedItemColor,
          unselectedItemColor: unselectedItemColor,
          backgroundColor: footerBackground,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          iconSize: 30.0,
          onTap: (index) {
            print('oprimio el elemento --> $index');
          },
        )
    );
  }

}