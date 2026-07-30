import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lists extends StatelessWidget{
  lists({super.key});

  List color=[Colors.red, Colors.blue, Colors.amber, Colors.black, Colors.deepPurple, Colors.pinkAccent];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: color.length,
          itemBuilder: (context, index){
            return Center(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 150,
                    child:Text("$index"),
                    decoration: BoxDecoration(
                      color: color[index],
                    ),
                  )),
            );
          }
      ),
    );
  }
}