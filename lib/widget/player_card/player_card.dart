import 'package:flutter/material.dart';
import 'package:smiling_sniper_fc_app/config/app_color.dart';

class PlayerCard extends StatelessWidget {
  final String imgUrl, number, name;

  PlayerCard({this.imgUrl, this.number, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                imgUrl,
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
              Positioned(
                bottom: 0,
                child: new Container(
                    width: 40.0,
                    height: 30.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/img/flag.jpg'),
                        ))),
                //    child: Image.asset('assets/img/flag.jpg',width: 40,),
                // //  child: Image.network('https://cdn2.vectorstock.com/i/thumb-large/91/91/flag-cambodia-accurate-dimensions-element-vector-25819191.jpg',width: 30,),
              ),
            ],
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: AppColor.secondary),
            ),
          ),
          Text(
            number,
            style: Theme.of(context)
                .textTheme
                .headline3
                .copyWith(color: AppColor.secondary),
          ),
        ],
      ),
    );
  }
}
