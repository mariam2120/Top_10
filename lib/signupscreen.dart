// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:top_10/signinScreen.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 101, 55, 55),
        title: Center(
            child: Text(
          "SIGN UP",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
            SizedBox(height: 25),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "username",
                  prefix: Padding(
                    padding: const EdgeInsets.only(right: 9),
                    child: Icon(Icons.person_2),
                  )),
            ),
            SizedBox(height: 9),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  prefix: Padding(
                    padding: const EdgeInsets.only(right: 9),
                    child: Icon(Icons.email),
                  )),
            ),
            SizedBox(height: 9),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  prefix: Padding(
                    padding: const EdgeInsets.only(right: 9),
                    child: Icon(Icons.lock),
                  ),
                  suffix: Icon(Icons.visibility)),
            ),
            SizedBox(height: 9),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Confirm Password",
                  prefix: Padding(
                    padding: const EdgeInsets.only(right: 9),
                    child: Icon(Icons.lock),
                  ),
                  suffix: Icon(Icons.visibility)),
            ),
            SizedBox(height: 15),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (v){
                      return SignIn();
                    })
                  );
              },
              child: Container(
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text("Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ),
              ),
              color: Color.fromARGB(255, 124, 78, 78),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account"),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                    MaterialPageRoute(builder: (v){
                      return SignIn();
                    })
                  );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Color.fromARGB(255, 245, 57, 5)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
