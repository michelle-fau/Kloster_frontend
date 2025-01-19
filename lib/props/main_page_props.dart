import 'package:flutter/material.dart';

/// [MainPageProps] is a class that will be used to define the properties
/// of the main page in the app
class MainPageProps {
  /// [page] is a widget that will be displayed in the app
  final Widget page;

  /// [unselectedIcon] is an icon that will be displayed when the page is not selected
  final Icon unselectedIcon;

  /// [selectedIcon] is an icon that will be displayed when the page is selected
  final Icon selectedIcon;

  /// [label] is a label that represents the page name
  final String label;

  MainPageProps({
    required this.page,
    required this.unselectedIcon,
    required this.selectedIcon,
    required this.label,
  });
}
