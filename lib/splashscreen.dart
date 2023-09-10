// ignore_for_file: must_call_super, prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:top_10/signupscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @optionalTypeArgs
  void initState(){
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.asset('images/5553769.png',height: 150,width: 150,),
                )
              ),
            Text("Devoloped by Mariam Wael",style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}