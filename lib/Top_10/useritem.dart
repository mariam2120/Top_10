// ignore_for_file: prefer_const_constructors, sort_child_properties_last, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:top_10/Top_10/usermodel.dart';

class UserItem extends StatelessWidget {
 UserModel userModel;
  UserItem({required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 30,
            child: Text(
              userModel.number,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            backgroundColor: Color.fromARGB(255, 169, 111, 111),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userModel.name,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
            ),
            SizedBox(
              height: 4.5,
            ),
            Text(
              userModel.phone,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.cyan[700]),
            )
          ],
        )
      ],
    );
  }
}
