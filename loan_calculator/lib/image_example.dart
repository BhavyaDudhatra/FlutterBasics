import 'package:flutter/material.dart';

class Imageexample extends StatelessWidget{
  const Imageexample({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage("https://media.tenor.com/V7t6BndU6oEAAAAm/stickman-dancing.webp")
            ),

            Container(
              height:400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Image/images.png"),
                ),
              ),
            ),
            // Container(
            //   child: Image.network(
            //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiKdI0WAvWF_ikRox2r4A5KPwSOMwf_Nh0qWxhgnBLBA&s=10",
            //   ),
            // ),

                Image.asset("assets/Image/images.png"),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiKdI0WAvWF_ikRox2r4A5KPwSOMwf_Nh0qWxhgnBLBA&s=10"
            ),
          ],
        ),
      )
    );
  }
}