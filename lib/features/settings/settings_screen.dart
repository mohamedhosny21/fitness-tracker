import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.red,
            onPressed: () {
              // Push to the Sd screen using the current Navigator of the tab
              // Navigator.pushNamed(context, AppRoutes.sd); // Push named route
            },
            child: const Text('Go to SD Screen'),
          ),
        ],
      ),
    );
  }
}
