import 'package:flutter/material.dart';
import 'package:sweat_smart/features/home/widgets/popular_recipe_item.dart';

class PopularRecipesListView extends StatelessWidget {
  const PopularRecipesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const PopularRecipeItem(),
      itemCount: 2,
    );
  }
}
