// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:top_10/Top_10/userscreen.dart';
import 'package:top_10/signupscreen.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 101, 55, 55),
        title: Center(
          child: Text(
            "SIGN IN",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
              ),
              SizedBox(height: 65),
              TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      prefix: Padding(
                        padding: const EdgeInsets.only(right: 9),
                        child: Icon(Icons.email),
                      ))),
              SizedBox(height: 9),
              TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      prefix: Padding(
                        padding: const EdgeInsets.only(right: 9),
                        child: Icon(Icons.lock),
                      ),
                      suffix: Icon(Icons.visibility))),
              SizedBox(height: 15),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (v){
                      return UsersScreen();
                    })
                  );
                },
                child: Container(
                    width: double.infinity,
                    height: 50,
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ))),
                color: Color.fromARGB(255, 124, 78, 78),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                    MaterialPageRoute(builder: (v){
                      return SignUp();
                    })
                  );
                      },
                      child: Text(
                        "Sign Up",
                        style:
                            TextStyle(color: Color.fromARGB(255, 245, 57, 5)),
                      )),
                ],
              )
            ]),
      ),
    );
  }
}
