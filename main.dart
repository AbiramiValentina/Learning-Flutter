import 'package:flutter/material.dart';
import 'package:stf_t3/home_screen.dart';
import 'package:stf_t3/theme_changer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(
        
      ),
      debugShowCheckedModeBanner: false,);
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var scrind = 0;
  List screens = [Menu(),Home(),Return()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("App Bar"),
        elevation: 0,
      ),
      body:screens[scrind],
       
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ThemeChange()));
        },
        child: Icon(Icons.circle),
      ),
      // ---BOTTOM NAVIGATION BAR---
      bottomNavigationBar:Container(
        height: 60,
        color: Colors.lightGreen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(() {
               scrind =0;
               print(scrind);
                
              });
            },
            child: Icon(Icons.home)),
          InkWell(  onTap: () {
               setState(() {
               scrind =1;
               print(scrind);
                
              });
            },
            child: Icon(Icons.abc)),
          InkWell(  onTap: () {
              setState(() {
               scrind =2;
               print(scrind);
                
              });
            },child: Icon(Icons.settings))
        ],
      ),
      )
      /*
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),

      */
    );
  }
}