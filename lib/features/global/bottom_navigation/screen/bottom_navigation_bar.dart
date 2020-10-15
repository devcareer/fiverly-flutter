
import 'package:fiverly_flutter/features/global/bottom_navigation/bloc/bottom_navigation_bar_bloc.dart';
import 'package:fiverly_flutter/features/main/main_page.dart';
import 'package:flutter/material.dart';

import '../../app_color.dart';

class BottomNavBarApp extends StatefulWidget {
  createState() => _BottomNavBarAppState();
}

class _BottomNavBarAppState extends State<BottomNavBarApp> {
  BottomNavBarBloc _bottomNavBarBloc;

  @override
  void initState() {
    super.initState();
    _bottomNavBarBloc = BottomNavBarBloc();
  }

  @override
  void dispose() {
    _bottomNavBarBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<NavBarItem>(
        stream: _bottomNavBarBloc.itemStream,
        initialData: _bottomNavBarBloc.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          switch (snapshot.data) {
            case NavBarItem.HOME:
              return MainPage();
            case NavBarItem.BAG:
              return  _settingsArea();
            case NavBarItem.FAVORITES:
              return _settingsArea();
            case NavBarItem.PROFILE:
              return _settingsArea();
            case NavBarItem.SHOP:
              return _settingsArea();
          }
        },
      ),
      bottomNavigationBar: StreamBuilder(
        stream: _bottomNavBarBloc.itemStream,
        initialData: _bottomNavBarBloc.defaultItem,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          return BottomNavigationBar(
            // fixedColor: Colors.blueAccent,
            currentIndex: snapshot.data.index,
            onTap: _bottomNavBarBloc.pickItem,
            selectedItemColor: AppColor.primaryColor,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                  label: 'Shop', icon: Icon(Icons.shopping_cart)),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _homeArea() {
    return Center(
      child: Text(
        'Home Screen',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.green,
          fontSize: 25.0,
        ),
      ),
    );
  }

  Widget _alertArea() {
    return Center(
      child: Text(
        'Notifications Screen',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.red,
          fontSize: 25.0,
        ),
      ),
    );
  }

  Widget _settingsArea() {
    return Center(
      child: Text(
        'Settings Screen',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.blue,
          fontSize: 25.0,
        ),
      ),
    );
  }
}
