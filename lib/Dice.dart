import 'package:dicee/DicePainter.dart';
import 'package:dicee/WeekBa.dart';
import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({super.key, this.dice = 1, required this.onTap, required this.id});

  final int? dice;
  final Function(int id) onTap;
  final int id;

  @override
  Widget build(BuildContext context) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 5),
      ),
      child: Material(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
              borderRadius: BorderRadius.circular(20),
              focusColor: Colors.red.shade100,
              onTap: () {
                onTap(id);
              },
              child: CustomPaint(
                painter: DicePainter(dice!),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.width * 0.3,
                ),
              ))));
}
