// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  String name, phone;
  UserProfile({required this.name, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 101, 55, 55),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 151, 112, 112),
              child: Icon(Icons.person, size: 95 ,color: Colors.white,),
              radius: 60,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              name,
              style: TextStyle(
                  color: Colors.white, fontFamily: "Cinzel", fontSize: 43),
            ),
            const Text(
              "SOFTWARE ENGINEER",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Merriweather",
                  fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
              child: Row(children: [
                const Icon(Icons.phone),
                const SizedBox(
                  width: 9,
                ),
                Text(phone,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    )),
              ]),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
              child: Row(children: [
                const Icon(Icons.link),
                const SizedBox(
                  width: 9,
                ),
                Text("https//:linkedin/$name.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    )),
              ]),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
              child: Row(children: [
                const Icon(Icons.location_on_outlined),
                const SizedBox(
                  width: 9,
                ),
                Text("Atomika",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    )),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
