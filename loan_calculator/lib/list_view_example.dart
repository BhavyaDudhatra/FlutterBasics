import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lists extends StatelessWidget{
  const lists({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index){
            return Center(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 150,
                    child:Text("$index"),
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                  )),
            );
          }
      ),
    );
  }
}