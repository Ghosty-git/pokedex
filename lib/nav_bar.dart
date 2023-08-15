
import 'package:flutter/material.dart';
import 'package:poki/setting_screen.dart';
import 'package:poki/utils.dart';

import 'screens/home_screen.dart';

class NavBar extends StatelessWidget {
  final int currentPage;

  const NavBar({super.key, this.currentPage = 0});

  List<BottomNavigationBarItem> _generateItemList() {
    var items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        activeIcon: Icon(Icons.home,),
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        activeIcon: Icon(Icons.settings),
        icon: Icon(Icons.settings),
        label: 'Setting',
      ),
    
    ];

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BottomNavigationBar(
        items: _generateItemList(),
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
          fontFamily: 'Lato',
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 24,
        unselectedFontSize: 14,
        selectedFontSize: 14,
        onTap: (index) async {
          switch (index) {
            case 0:
              {
                if (currentPage != index) {
                  customNavigatorPushAndRemove(
                    context,
                     HomeScreen(),
                  );
                }

                break;
              }
            case 1:
              {
                if (currentPage != index) {
                  customNavigatorPushAndRemove(
                    context,
                     SettingScreen(),
                  );
                }
                break;
              }
          }
        },
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
