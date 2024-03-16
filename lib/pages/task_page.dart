import 'dart:math';
import 'package:animated_background/animated_background.dart';
import 'package:discover_your_home/consts.dart';
import 'package:discover_your_home/models/planets.dart';
import 'package:discover_your_home/models/tasks.dart';
import 'package:discover_your_home/pages/task_detail_page.dart';
import 'package:discover_your_home/widgets/news_item.dart';
import 'package:discover_your_home/widgets/category_item.dart';
import 'package:discover_your_home/widgets/news_task_item.dart';
import 'package:discover_your_home/widgets/planet_item.dart';
import 'package:discover_your_home/widgets/task_item.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> with TickerProviderStateMixin {
  List<String> categories = ['tasks'];
  PageController? pageController;
  double? pageOffset = 1;
  double viewPortFraction = 0.85;

  int selectedCategory = 1;

  @override
  void initState() {
    super.initState();
    pageController =
        PageController(initialPage: 1, viewportFraction: viewPortFraction)
          ..addListener(() {
            setState(() {
              pageOffset = pageController!.page;
            });
          });
  }

  @override
  void dispose() {
    super.dispose();
    pageController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: AnimatedBackground(
          behaviour: SpaceBehaviour(),
          vsync: this,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            color: darkBlue.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Icon(
                          Icons.grid_view_rounded,
                          color: orange,
                        ),
                      ),
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            color: darkBlue.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Icon(
                          Icons.search,
                          color: orange,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Text(
                    ' Welcome  !',
                    style: proportional.copyWith(fontSize: 32),
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
                            selected: selectedCategory == index,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: size.height * 0.5,
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: pageController,
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      double scale = max(
                        viewPortFraction,
                        (1 - (pageOffset! - index).abs() + viewPortFraction),
                      );
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  TaskDetailPage(task: tasks[index]),
                            ),
                          );
                        },
                        child: TaskItem(
                          task: tasks[index],
                          size: size,
                          viewPortFraction: viewPortFraction,
                          scale: scale,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Haberler  ',
                        style: proportional.copyWith(
                          fontSize: 20,
                          color: white,
                        ),
                      ),
                      Text(
                        ' see all',
                        style: proportional.copyWith(
                          fontSize: 20,
                          color: white.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const NewsTaskItem(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
