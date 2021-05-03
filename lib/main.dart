import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/pages/home.dart';
import 'package:instagram_clone_flutter/pages/notifications.dart';
import 'package:instagram_clone_flutter/pages/search.dart';
import 'package:instagram_clone_flutter/pages/create_post.dart';
import 'package:instagram_clone_flutter/pages/profile.dart';
import 'package:instagram_clone_flutter/models/global.dart';
import 'package:instagram_clone_flutter/models/appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    CreatePostPage(),
  NotificationsPage(),
    ProfilePage()

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        body: TabBarView(children: pages),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 20.0),
          child: new TabBar(tabs: [
            Tab(icon: Icon(Icons.home),
            ),
            Tab(icon: Icon(Icons.search),
            ),
            Tab(icon: Icon(Icons.add),
            ),
            Tab(icon: Icon(Icons.favorite),
            ),
            Tab(icon: Icon(Icons.perm_identity),
            ),


          ],
          unselectedLabelColor: Colors.black,
            labelColor: Colors.blue,
            indicatorColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

