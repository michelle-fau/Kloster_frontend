import 'package:flutter/material.dart';
import 'package:kloster/props/main_page_props.dart';

/// [BottomNavBar] is a custom widget that will be used to display the bottom
/// nav bar in the app
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.setPage,
    required this.pages,
  });

  /// [currentIndex] is used to keep track of the current page index
  /// that is being displayed in the app
  final int currentIndex;

  /// [setPage] is a function that will be used to set the current page index
  /// to the given index
  final Function(int) setPage;

  /// [pages] is a list of pages that will be displayed in the app
  final List<MainPageProps> pages;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: [
          for (int i = 0; i < pages.length; i++) ...[
            BottomNavigationBarItem(
                icon: (currentIndex == i)
                    ? (pages[i].selectedIcon)
                    : pages[i].unselectedIcon,
                label: pages[i].label),
          ]
        ],
        currentIndex: currentIndex,
        onTap: (int newIndex) {
          if (currentIndex == newIndex) {
            return;
          }

          // Set the current page index to the new index
          setPage(newIndex);
        });
  }
}
