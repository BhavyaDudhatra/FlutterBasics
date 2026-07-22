import 'package:flutter/material.dart';

class home1 extends StatelessWidget {
  home1({super.key});

  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController number=TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          SizedBox(
            height: 100,
            width: 200,
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                  label: Text("Email"),
                  suffixIcon: Icon(Icons.mail),
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
          SizedBox(
            height: 100,
            width: 200,
            child: TextField(
              controller: number,
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                  label: Text("Number"),
                  suffixIcon: Icon(Icons.phone),
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
          SizedBox(
            height: 100,
            width: 200,
            child: TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                  label: Text("Password"),
                  suffixIcon: Icon(Icons.visibility),
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
