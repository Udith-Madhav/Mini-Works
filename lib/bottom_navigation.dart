import 'package:flutter/material.dart';

class Navbottom extends StatefulWidget {
  const Navbottom({super.key});

  @override
  State<Navbottom> createState() => _NavbottomState();
}

class _NavbottomState extends State<Navbottom> {
  int indexNnum=0;
  List tabWidget = [
    Text('Home',style: TextStyle(fontSize: 40),),
    Text('Person',style: TextStyle(fontSize: 40),),
    Text('Dashbord',style: TextStyle(fontSize: 40),),
    Text('Settings',style: TextStyle(fontSize: 40),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30)  
          )
        ),
        elevation: 50,
    ),

    bottomNavigationBar: BottomNavigationBar(
      items:const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "home",
          backgroundColor: Colors.amber,
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "person",
          backgroundColor: Colors.orange,
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: "dashboard",
          backgroundColor: Colors.red,
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "settings",
          backgroundColor: Colors.black,
        )

      ],
      iconSize: 25,
      currentIndex: indexNnum,
      onTap: (int intex){
        setState(() {
          indexNnum=intex;
        });
      },
      ),

      body: Center(
        child: tabWidget.elementAt(indexNnum),
      ),
    );
  }
}