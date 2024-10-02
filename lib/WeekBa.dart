import 'dart:math';

import 'package:dicee/Dice.dart';
import 'package:flutter/material.dart';

class WeekBa extends StatefulWidget {
  const WeekBa({super.key});
  @override
  State<StatefulWidget> createState() => WeekBaState();
}

class WeekBaState extends State<WeekBa> {
  int _dice1 = 1;
  int _dice0 = 1;

  void _onTap(int id) {
    Random random = Random();
    setState(() {
      id == 1 ? _dice1 = random.nextInt(6) + 1 : _dice0 = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) => Container(
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Dice(
            id: 0,
            onTap: (ind) {
              _onTap(ind);
            },
            dice: _dice0,
          ),
          const SizedBox(width: 20),
          Dice(
            id: 1,
            onTap: (ind) {
              _onTap(ind);
            },
            dice: _dice1,
          )
        ],
      ));
}
