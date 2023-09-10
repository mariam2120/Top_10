// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:top_10/Top_10/useritem.dart';
import 'package:top_10/Top_10/usermodel.dart';
import 'package:top_10/Top_10/userprofile.dart';


class UsersScreen extends StatelessWidget {
  UsersScreen({super.key});
  List<UserModel> users = [
    UserModel(number: "1", name: "Mariam Wael", phone: "01142928498"),
    UserModel(number: "2", name: "Mario Ashraf", phone: "01554776868"),
    UserModel(number: "3", name: "Karol hany", phone: "01245464647"),
    UserModel(number: "4", name: "Mira Refaat", phone: "01089787866"),
    UserModel(number: "5", name: "Omar Khaled", phone: "01123435668"),
    UserModel(number: "6", name: "Marina Emad", phone: "01135467587"),
    UserModel(number: "7", name: "Alaa Mohammed", phone: "01097787633"),
    UserModel(number: "8", name: "Keroles Ayman", phone: "01575578523"),
    UserModel(number: "9", name: "Islam Hassan", phone: "01257657888"),
    UserModel(number: "10", name: "Mariam Bassem", phone: "010767566676"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 55, 55),
        title: const Center(
          child: Text(
            "TOP TEN",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset('images/5553769.png'),
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            var currentuser = users[index];
            return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserProfile(
                          name: currentuser.name, phone: currentuser.phone),
                    )),
                child: UserItem(
                  userModel: users[index],
                ));
          },
          separatorBuilder: (context, index) => Divider(
                indent: 40,
                endIndent: 40,
              ),
          itemCount: users.length),
    );
  }
}
