import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kloster/constants/color_schemes.dart';
import 'package:kloster/constants/consts.dart';
import 'package:kloster/widgets/button.dart';

class PermissionsRequestPage extends StatefulWidget {
  const PermissionsRequestPage({super.key});

  @override
  State<PermissionsRequestPage> createState() => _PermissionsRequestPage();
}

class _PermissionsRequestPage extends State<PermissionsRequestPage> {
  /// [_currentPage] is the index of the current page being displayed.
  int _currentPage = 0;

  /// [_nextPage] increments the [_currentPage] by 1.
  void _nextPage() {
    setState(() {
      _currentPage++;
    });
  }

  /// [_pages] is a list of widgets that represent the pages in the onboarding flow.
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();

    _pages = [
      Column(
        children: [
          const Text(
            "We need your location",
            style: TextStyle(
                color: ColorSchemes.textPrimary,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          const Text(
              "Kloster needs your location to find the best deal in your area.",
              textAlign: TextAlign.center,
              style: TextStyle(color: ColorSchemes.textPrimary, fontSize: 16)),
          const Spacer(),
          SvgPicture.asset("assets/images/loc_permission.svg", height: 200),
          const Spacer(),
          Button(
              fullWidth: true,
              onPressed: _nextPage,
              child: const Text(
                "Continue",
                style: TextStyle(color: ColorSchemes.textPrimary),
              ))
        ],
      ),
      Column(
        children: [
          SvgPicture.asset("assets/images/loc_permission.svg", height: 200),
          const Spacer(),
          const Text(
            "Stay up to date",
            style: TextStyle(
                color: ColorSchemes.textPrimary,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          const Text(
              "We remind you about your bookings and let you know about new restaurants, cities and deals.",
              textAlign: TextAlign.center,
              style: TextStyle(color: ColorSchemes.textPrimary, fontSize: 16)),
          const Spacer(),
          Button(
              fullWidth: true,
              onPressed: () {},
              child: const Text(
                "Enable notifications",
                style: TextStyle(color: ColorSchemes.textPrimary),
              )),
          Button(
            fullWidth: true,
            onPressed: () {},
            backgroundColor: ColorSchemes.subtle,
            child: const Text(
              "Maybe later",
              style: TextStyle(color: ColorSchemes.textPrimary),
            ),
          )
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorSchemes.backgroundPrimary,
        body: SafeArea(
            minimum: const EdgeInsets.symmetric(
                horizontal: PAGE_PADDING_MOBILE,
                vertical: 3 * PAGE_PADDING_MOBILE),
            child: _pages[_currentPage]));
  }
}
