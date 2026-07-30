import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final TextEditingController name = TextEditingController();

class imageExample extends StatelessWidget{
  const imageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
          height: 100,
          width: 200,
          child: TextField(
            controller: name,
            maxLines: 2,
            style: TextStyle(
                color: Colors.blue
            ),
            decoration: InputDecoration(
                label: Text("Name"),
                suffixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderSide: BorderSide(

                      color: Colors.blue,
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.red
                    ),
                    borderRadius: BorderRadius.circular(20)
                )
            ),
            ),
        ),
        ],
        ),

    );
  }
}
