import 'package:dating_app/core/constants/icon_constants.dart';
import 'package:dating_app/core/extensions/context/context_ext.dart';
import 'package:dating_app/presentation/widgets/stack_badge/stack_badge.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavBar(),
      body: const Center(
        child: Text('Main Page'),
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: context.extApp.theme.appColor.primary.color,
      unselectedItemColor: context.extApp.theme.appColor.grey.color,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: IconConstants.discover,
          label: 'Discover',
        ),
        BottomNavigationBarItem(
          icon: StackBadge(
            showBadge: false,
            child: IconConstants.matches,
          ),
          label: 'Matches',
        ),
        BottomNavigationBarItem(
          icon: StackBadge(
            showBadge: false,
            child: IconConstants.messages,
          ),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: IconConstants.profile,
          label: 'Profile',
        ),
      ],
    );
  }
}
