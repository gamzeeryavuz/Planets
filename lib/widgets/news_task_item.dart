import 'package:discover_your_home/consts.dart';
import 'package:discover_your_home/models/planets.dart';
import 'package:discover_your_home/models/tasks.dart';
import 'package:flutter/material.dart';

class NewsTaskItem extends StatelessWidget {
  const NewsTaskItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      decoration: BoxDecoration(
          color: darkBlue, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Uzayda Yaşam  ',
                style: montserrat.copyWith(fontSize: 16, height: 1.5),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: blue,
              )
            ],
          ),
          const SizedBox(height: 16),
          Text(
            taskNews,
            maxLines: 4,
            overflow: TextOverflow.clip,
            style: montserrat.copyWith(
                fontSize: 11, color: white, height: 1.5, letterSpacing: 1),
          )
        ],
      ),
    );
  }
}
