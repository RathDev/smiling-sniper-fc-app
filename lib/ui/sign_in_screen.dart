import 'package:flutter/material.dart';
import 'package:smiling_sniper_fc_app/widget/button/general_button.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person_pin,size: 100,color: Colors.grey,),
            SizedBox(
              height: 20,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12),

                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple)),
                labelText: 'Phone number or Email',
                //hintText: 'Enter Project name'),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12),

                labelText: 'Password',
                //hintText: 'Enter Project name'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GeneralButton(
              onTap: (){},
              title: 'Login',
              width: 100,
              height: 50,
              circular: 6,
              color: Colors.deepPurple,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
