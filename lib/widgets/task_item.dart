import 'dart:math';

import 'package:discover_your_home/consts.dart';
import 'package:discover_your_home/models/planets.dart';
import 'package:discover_your_home/models/tasks.dart';
import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.size,
    required this.viewPortFraction,
    required this.scale,
    required this.task,
  });

  final Size size;
  final double viewPortFraction;
  final double scale;
  final TasksModel task;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: size.width *
              0.74 *
              max(viewPortFraction, scale - viewPortFraction),
          width: size.width * 0.8,
          decoration: BoxDecoration(
              color: orange.withOpacity(0.7),
              borderRadius: BorderRadius.circular(25)),
        ),
        Positioned(
          left: 85,
          bottom: 165,
          child: Hero(
            tag: task.image!,
            child: Image.asset(
              'assets/images/${task.image}',
              height: size.width * 0.65 * (scale - viewPortFraction),
              width: size.width * 0.65 * (scale - viewPortFraction),
            ),
          ),
        ),
        Positioned(
          left: 36,
          right: 36,
          bottom: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(task.name!, 
              style: proportional.copyWith(fontSize: 16)),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: blue,
              )
            ],
          ),
        )
      ],
    );
  }
}
