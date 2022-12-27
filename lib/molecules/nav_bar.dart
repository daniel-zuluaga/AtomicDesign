import 'package:atomic_design/fundation/color_fundation.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {

  final List<BottomNavigationBarItem>? bottomNavigationBar;
  final Icon iconLeft;
  final Icon iconRight;
  final Color? backgroundNavBar;

  const NavBarWidget({super.key, 
    this.iconRight = const Icon(Icons.home_rounded),
    this.iconLeft = const Icon(Icons.school_rounded), 
    this.bottomNavigationBar, 
    this.backgroundNavBar
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
          backgroundColor: backgroundNavBar ?? footerBackground,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          iconSize: 30.0,
          onTap: (index) {
            print('oprimio el elemento --> $index');
          },
        )
    );
  }

}