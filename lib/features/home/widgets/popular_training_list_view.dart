import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/features/home/widgets/popular_training_item.dart';

class PopularTrainingListView extends StatelessWidget {
  const PopularTrainingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) =>
              PopularTrainingItem(itemIndex: index)),
    );
  }
}
