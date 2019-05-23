import 'package:flutter/material.dart';

class NavigationIconView {
  final String _title;
  final Widget _icon;
  final Widget _activeIcon;
  final BottomNavigationBarItem item;

  NavigationIconView({Key key, String title, Widget icon, Widget activeIcon})
      : _title = title,
        _icon = icon,
        _activeIcon = icon,
        item = BottomNavigationBarItem(
          icon: icon,
          activeIcon: activeIcon,
          title: Text(title),
          backgroundColor: Colors.blue,
        );
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NavigationIconView> _navigationViews;
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      NavigationIconView(
          title: '微信',
          icon: const Icon(Icons.access_alarm),
          activeIcon: Icon(Icons.home)),
      NavigationIconView(
          title: '通讯录',
          icon: const Icon(Icons.star),
          activeIcon: Icon(Icons.account_circle)),
      NavigationIconView(
          title: '发现',
          icon: const Icon(Icons.account_circle),
          activeIcon: Icon(Icons.favorite)),
      NavigationIconView(
          title: '我',
          icon: const Icon(Icons.title),
          activeIcon: Icon(Icons.add)),
    ];
//    for(NavigationIconView view in _navigationViews){
//        view.controller.addListener(_rebuild);
//    }
  }

  void rebuild() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavBar = BottomNavigationBar(
      items: _navigationViews
          .map((NavigationIconView navigationView) => navigationView.item)
          .toList(),
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed, //改变底部导航点击是否改变
      onTap: (int index) {
        setState(() {
          print("点击的是第$index 个");
//                  _navigationViews[_currentIndex].controller.reverse();
//                  _currentIndex = index;
//                  _navigationViews[_currentIndex].controller.forward();
        });
      },
    );
    return Scaffold(
      appBar: AppBar(title: Text("微信")),
      body: Container(),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
