import 'package:flutter/material.dart';

class TabFlutter extends StatefulWidget {
  const TabFlutter({Key? key}) : super(key: key);

  @override
  State<TabFlutter> createState() => _TabFlutterState();
}
class _TabFlutterState extends State<TabFlutter> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar'),
        backgroundColor: Colors.cyan,
        bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Tab 1',),
              Tab(text: 'Tab 2',),
              Tab(text: 'Tab 3',),
            ]
        ),
      ),

      body: TabBarView(
        controller: _tabController, // Add controller here too
        children: [
          Center(child: Text('tab 1 content'),),
          Center(child: Text('tab 2 content'),),
          Center(child: Text('tab 3 content'),),
        ],
      ),
    );
  }
}
