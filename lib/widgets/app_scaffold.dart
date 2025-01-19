import 'package:flutter/material.dart';
import 'package:kloster/props/main_page_props.dart';
import 'package:kloster/widgets/bottom_nav_bar.dart';

/// [AppScaffold] is a custom widget that will be used to display the app scaffold
/// in the app
/// The [AppScaffold] widget will be used to display the bottom nav bar and the
class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key});

  @override
  State<AppScaffold> createState() => _AppScaffold();
}

class _AppScaffold extends State<AppScaffold> {
  /// [_currentPage] is used to keep track of the current page index
  /// that is being displayed in the app
  int _currentPage = 0;

  /// [_setPage] is a function that will be used to set the current page index
  /// to the given index
  void _setPage(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  /// [_pageProps] is a list of pages that will be displayed in the app
  /// The [MainPageProps] class is a custom
  final List<MainPageProps> _pageProps = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageProps[_currentPage].page,
      bottomNavigationBar: BottomNavBar(
          currentIndex: _currentPage, setPage: _setPage, pages: _pageProps),
    );
  }
}
