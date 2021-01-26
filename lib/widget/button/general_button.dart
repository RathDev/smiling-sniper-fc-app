import 'package:flutter/material.dart';
class GeneralButton extends StatelessWidget {
  String title;
  double height,width,circular;
  GestureTapCallback onTap;
  Color color,textColor;


  GeneralButton(
      {this.title,
      this.height,
      this.width,
      this.circular,
      this.onTap,
      this.color,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: FlatButton(
        color: color,
        onPressed: onTap,
        child: Text(title,style: TextStyle(color: textColor,fontWeight: FontWeight.bold,),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circular),

        ),
      ),

    );
  }
}
