import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweat_smart/core/theming/colors.dart';
import 'package:sweat_smart/features/home/home.dart';
import 'package:sweat_smart/features/settings/settings_screen.dart';
import 'package:sweat_smart/features/subscription/subscription_screen.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({super.key});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _currentIndex = 0;
  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];
  void _selectTab(int index) {
    if (_currentIndex == index) {
      // If the current tab is selected, pop to the first route
      _navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  List<Widget> _buildScreens() {
    return [
      Navigator(
        key: _navigatorKeys[0],
        onGenerateRoute: (settings) {
          return MaterialPageRoute(builder: (context) => const HomeScreen());
        },
      ),
      Navigator(
        key: _navigatorKeys[1],
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
              builder: (context) => const SubscriptionScreen());
        },
      ),
      Navigator(
        key: _navigatorKeys[2],
        onGenerateRoute: (settings) {
          // if (settings.name == AppRoutes.screenB) {
          //   return MaterialPageRoute(builder: (context) => const screenB());
          // }
          return MaterialPageRoute(
              builder: (context) => const SettingsScreen());
        },
      ),
    ];
  }

  Future<bool> _onWillPop() async {
    final NavigatorState currentNavigatorState =
        _navigatorKeys[_currentIndex].currentState!;

    if (currentNavigatorState.canPop()) {
      // Pop the current screen in the active tab
      currentNavigatorState.pop();
      return Future.value(false); // Prevent app from exiting
    } else {
      // Allow the app to exit if there's nothing left to pop
      return Future.value(true);
    }
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: AppColors.darkGrey,
      unselectedItemColor: Colors.white,
      selectedItemColor: AppColors.lightGreen,
      currentIndex: _currentIndex,
      onTap: _selectTab,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.workspace_premium),
          label: 'GO Premium',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) async {
            bool shouldExitApp = await _onWillPop();
            if (shouldExitApp) {
              // Exit the app when there's nothing left to pop
              SystemNavigator.pop(); // Exits the app
            }
          },
          child: IndexedStack(
            index: _currentIndex, // Root navigator for non-tab screens
            children: _buildScreens(),
          ),
        ),
        bottomNavigationBar: _bottomNavigationBar());
  }
}
