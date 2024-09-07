import 'package:flutter/material.dart';
import '../../../core/theming/colors.dart';

class GetStartedImage extends StatelessWidget {
  final String image;
  const GetStartedImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height *
          0.8, // Height relative to screen height (70% of screen height)
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.center,
          colors: [
            AppColors.transparentBlack.withOpacity(1.0),
            AppColors.transparentBlack.withOpacity(0.6),
            AppColors.transparentBlack.withOpacity(0.0),
          ],
        ),
      ),
      child: Image.asset(
        fit: BoxFit.cover,
        image,
      ),
    );
  }
}
