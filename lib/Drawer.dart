import 'package:flutter/material.dart';
import 'package:flutter_application_2/Snack%20bar.dart';
import 'package:flutter_application_2/Toast%20Message.dart';
import 'package:flutter_application_2/positive%20and%20negative%20count.dart';

class ListDrawer extends StatefulWidget {
  const ListDrawer({super.key});

  @override
  State<ListDrawer> createState() => _ListDrawerState();
}

class _ListDrawerState extends State<ListDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.purple,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Pages')
            ),
            ListTile(
              title: Text('Snack Bar'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SnackMessage()));
              },
            ),
            ListTile(
              title: Text('Toast Message'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Messagetoast()));
              },
            ),
            ListTile(
              title: Text('Counter'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayNumber()));
              },
            )
          ],
        ),
      ),
    );
  }
}