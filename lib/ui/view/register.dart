import 'package:flutter/material.dart';
import 'file:///E:/workspace/smiling-sniper-fc-app/lib/ui/view/sign_in_screen.dart';
import 'package:smiling_sniper_fc_app/widget/button/general_button.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.person_pin,size: 100,color: Colors.grey,),
            SizedBox(
              height: 50,
            ),
            GeneralButton(
              width: 100,
              height: 50,
              title: 'Sign In',
              color: Colors.deepPurple,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ),
                );
              },
              circular: 6,
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Text('Don\'t have an account ? '),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
