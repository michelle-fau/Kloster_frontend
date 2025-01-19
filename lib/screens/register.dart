import 'package:flutter/material.dart';
import 'package:kloster/constants/color_schemes.dart';
import 'package:kloster/constants/consts.dart';
import 'package:kloster/routes/routes.dart';
import 'package:kloster/widgets/button.dart';

/// [RegisterPage] is a custom widget that will be used to display the register
/// page in the app
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  /// [_currentPage] is the index of the current page being displayed.
  int _currentPage = 0;

  /// [_nextPage] increments the [_currentPage] by 1.
  void _nextPage() {
    setState(() {
      _currentPage++;
    });
  }

  /// [_previousPage] decrements the [_currentPage] by 1.
  void _previousPage() {
    setState(() {
      _currentPage--;
    });
  }

  /// [_pages] is a list of widgets that represent the pages in the onboarding flow.
  late List<Widget> _pages;

  /// [_controllers] is a map that will be used to store the text editing
  /// controllers for the form fields
  final Map<String, TextEditingController> _controllers = {
    "username": TextEditingController(),
    "email": TextEditingController(),
    "phoneNumber": TextEditingController(),
    "password": TextEditingController(),
    "confirmPassword": TextEditingController(),
  };

  @override
  void initState() {
    super.initState();

    _pages = [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Form(
            child: TextFormField(
              keyboardType: TextInputType.name,
              controller: _controllers["username"],
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Username field is empty';
                }

                return null;
              },
              decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: const TextStyle(
                      color: ColorSchemes.highlight,
                      fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: ColorSchemes.subtle),
                    borderRadius: BorderRadius.circular(24),
                  )),
            ),
          ),
          Column(
            children: [
              Button(
                  fullWidth: true,
                  onPressed: _nextPage,
                  child: const Text(
                    "Next",
                    style: TextStyle(color: ColorSchemes.textPrimary),
                  )),
              const SizedBox(height: 4),
              Button(
                fullWidth: true,
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.login);
                },
                backgroundColor: ColorSchemes.subtle,
                child: const Text(
                  "I already have an account",
                  style: TextStyle(color: ColorSchemes.textPrimary),
                ),
              ),
            ],
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Form(
            child: TextFormField(
              keyboardType: TextInputType.name,
              controller: _controllers["email"],
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Email Address field is empty';
                }

                return null;
              },
              decoration: InputDecoration(
                hintText: 'Email Address',
                hintStyle: const TextStyle(
                    color: ColorSchemes.highlight, fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: ColorSchemes.subtle),
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Button(
                  fullWidth: true,
                  onPressed: _nextPage,
                  child: const Text(
                    "Next",
                    style: TextStyle(color: ColorSchemes.textPrimary),
                  )),
              const SizedBox(height: 4),
              Button(
                fullWidth: true,
                onPressed: _previousPage,
                backgroundColor: ColorSchemes.subtle,
                child: const Text(
                  "Back",
                  style: TextStyle(color: ColorSchemes.textPrimary),
                ),
              ),
            ],
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Form(
            child: TextFormField(
              keyboardType: TextInputType.name,
              controller: _controllers["phoneNumber"],
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Phone Number field is empty';
                }

                return null;
              },
              decoration: InputDecoration(
                  hintText: 'Phone Number',
                  hintStyle: const TextStyle(
                      color: ColorSchemes.highlight,
                      fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: ColorSchemes.subtle),
                    borderRadius: BorderRadius.circular(24),
                  )),
            ),
          ),
          Column(
            children: [
              Button(
                  fullWidth: true,
                  onPressed: _nextPage,
                  child: const Text(
                    "Next",
                    style: TextStyle(color: ColorSchemes.textPrimary),
                  )),
              const SizedBox(height: 4),
              Button(
                fullWidth: true,
                onPressed: _previousPage,
                backgroundColor: ColorSchemes.subtle,
                child: const Text(
                  "Back",
                  style: TextStyle(color: ColorSchemes.textPrimary),
                ),
              ),
            ],
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Form(
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  controller: _controllers["password"],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password field is empty';
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                          color: ColorSchemes.highlight,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: ColorSchemes.subtle),
                        borderRadius: BorderRadius.circular(24),
                      )),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  controller: _controllers["confirmPassword"],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Confirm Password field is empty';
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: const TextStyle(
                          color: ColorSchemes.highlight,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: ColorSchemes.subtle),
                        borderRadius: BorderRadius.circular(24),
                      )),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Button(
                  fullWidth: true,
                  onPressed: () {},
                  child: const Text(
                    "Create Account",
                    style: TextStyle(color: ColorSchemes.textPrimary),
                  )),
              const SizedBox(height: 4),
              Button(
                fullWidth: true,
                onPressed: _previousPage,
                backgroundColor: ColorSchemes.subtle,
                child: const Text(
                  "Back",
                  style: TextStyle(color: ColorSchemes.textPrimary),
                ),
              ),
            ],
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
        minimum: const EdgeInsets.symmetric(horizontal: PAGE_PADDING_MOBILE),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Register",
              style: TextStyle(
                  color: ColorSchemes.primary,
                  fontSize: 32,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 6),
            const Text("Create a new account to start using the app",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: ColorSchemes.textPrimary, fontSize: 16)),
            const SizedBox(height: 60),
            SizedBox(
              height: 300,
              child: _pages[_currentPage],
            )
          ],
        )),
      ),
    );
  }
}
