import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ap3/pages/basty.dart';
import 'package:flutter_ap3/pages/home.dart';
import 'package:flutter_ap3/pages/main_screen.dart';


class TabItem {
  String title;
  Icon icon;
  TabItem({required this.title, required this.icon,});
}

final List<TabItem> _tabBar = [
  TabItem(title: 'Басты', icon: Icon(Icons.home_filled),),
  TabItem(title: 'Тізімдер', icon: Icon(Icons.toc)),
  TabItem(title: 'Профиль', icon: Icon(Icons.account_circle)),
];

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarExampleState createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample>
    with TickerProviderStateMixin {
  TabController? _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabBar.length, vsync: this);
    _tabController!.addListener(() {
      print('Listener: ${_tabController!.index}');
      setState(() {
        _currentTabIndex = _tabController!.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: SliverAppBarExample(),
          ),
          Container(
            child: Home(),
          ),
          Container(
            color: Colors.yellow,
            child: MainScreen(),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _tabController?.index = index;
            _currentTabIndex = index;
          }
          );
        },
        currentIndex: _currentTabIndex,
        items: [
          for (final item in _tabBar)
            BottomNavigationBarItem(
              label: item.title,
              icon: item.icon,
            ),
        ],
      ),
    );
  }
}
