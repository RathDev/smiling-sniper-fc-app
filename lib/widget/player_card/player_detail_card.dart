import 'package:flutter/material.dart';
import 'package:smiling_sniper_fc_app/config/app_color.dart';

class PlayerDetailCard extends StatelessWidget {
  final String imgUrl;
  final String number;
  final String name, age, playerHeight, playerWeight, dateOfBirth, position;

  PlayerDetailCard(
      {this.imgUrl,

      this.number,
      this.name,
      this.age,
      this.playerHeight,
      this.playerWeight,
      this.dateOfBirth,
      this.position});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Image.asset(imgUrl),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'INFO',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: AppColor.secondary),
              ),
              Container(
                color: AppColor.placeholder,
                height: 0.5,
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                  ),
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),

              SizedBox(
                height: 12,
              ),
              Container(
                color: AppColor.placeholder,
                height: 0.5,
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Position',
                  ),
                  Text(
                    position,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                color: AppColor.placeholder,
                height: 0.5,
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Number',
                  ),
                  Text(
                    number,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                color: AppColor.placeholder,
                height: 0.5,
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date of birth',
                  ),
                  Text(
                    dateOfBirth,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                color: AppColor.placeholder,
                height: 0.5,
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Age',
                  ),
                  Text(
                    age,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                color: AppColor.placeholder,
                height: 0.5,
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Height',
                  ),
                  Text(
                    playerHeight,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                color: AppColor.placeholder,
                height: 0.5,
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Weight',
                  ),
                  Text(
                    playerWeight,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
