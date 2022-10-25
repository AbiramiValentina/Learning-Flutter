import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
    
      child: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 50,
                width: 100,
                child: TextField()),
            ),
            Text("Home Screen", style: TextStyle(color:Colors.black, fontSize: 20, ),),
          ],
        ),

      ),
    );
  }
}
class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Menu Screen", style: TextStyle(color:Colors.black, fontSize: 20, ),),
      ),
    );
  }
}
class Return extends StatelessWidget {
  const Return({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Return Screen", style: TextStyle(color:Colors.black, fontSize: 20, ),),
      ),
    );
  }
}