import 'package:flutter/material.dart';
import 'package:smiling_sniper_fc_app/ui/home_screen.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return   Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/img/smiling_sniper.png'),
            width: 220,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black
              ),
              color: Colors.grey,

            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black
                ),
                color: Colors.white,

              ),


              child: Text(
                "Smiling Sniper Football Team",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.black,fontWeight: FontWeight.bold,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
