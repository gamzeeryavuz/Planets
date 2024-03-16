import 'package:discover_your_home/consts.dart';
import 'package:discover_your_home/models/planets.dart';
import 'package:discover_your_home/models/tasks.dart';
import 'package:discover_your_home/pages/description_task_item.dart';
import 'package:discover_your_home/widgets/news_task_item.dart';
import 'package:flutter/material.dart';
import 'package:discover_your_home/widgets/category_item.dart';
import 'package:intl/intl.dart';

class TaskDetailPage extends StatefulWidget {
  final TasksModel task;
  const TaskDetailPage({super.key, required this.task});

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  List<String> categories = [ 'information', 'gallery'];
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TasksModel task = widget.task;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          black.withOpacity(0.75), BlendMode.darken),
                      image: const AssetImage('assets/images/background.jpg'),
                      fit: BoxFit.cover))),
          Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            color: darkBlue.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: darkBlue,
                        ),
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          color: darkBlue.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(
                        Icons.more_vert_rounded,
                        color: darkBlue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                      categories.length,
                      (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategory = index;
                              });
                            },
                            child: Padding(
                              padding: index == 0
                                  ? const EdgeInsets.only(left: 22, right: 30)
                                  : index == categories.length - 1
                                      ? const EdgeInsets.only(right: 22)
                                      : const EdgeInsets.only(right: 30),
                              child: CategoryItem(
                                  category: categories[index],
                                  selected: selectedCategory == index),
                            ),
                          )),
                ),
              ),
              const SizedBox(height: 80),
              Hero(
                  tag: task.image!,
                  child: Image.asset(
                    'assets/images/${task.image}',
                    width: size.width * 0.9,
                  )),
              const SizedBox(height: 70),
              Text(
                task.name!,
                style: proportional.copyWith(fontSize: 32),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    Expanded(
                      child:  Column(    
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [   
                          Text(   
                            task.description ?? ' ' ,
                            style:montserrat.copyWith(   
                              color:white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    
                    )
                   
                  
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
