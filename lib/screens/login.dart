import 'package:flutter/material.dart';
import 'package:kloster/constants/color_schemes.dart';
import 'package:kloster/constants/consts.dart';
import 'package:kloster/routes/routes.dart';
import 'package:kloster/widgets/button.dart';

/// [LoginPage] is a custom widget that will be used to display the login page
/// in the app
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  /// [_formKey] is a global key that will be used to validate the form
  /// fields
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  /// [_controllers] is a map that will be used to store the text editing
  /// controllers for the form fields
  final Map<String, TextEditingController> _controllers = {
    "email": TextEditingController(),
    "password": TextEditingController(),
  };

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
                "Login",
                style: TextStyle(
                    fontSize: 32,
                    color: ColorSchemes.primary,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 6),
              const Text(
                "Welcome Back! Please sign in to your account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: ColorSchemes.textPrimary,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _controllers["email"],
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: const TextStyle(
                                  color: ColorSchemes.highlight,
                                  fontWeight: FontWeight.w400),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(24)),
                                  borderSide:
                                      BorderSide(color: ColorSchemes.subtle)),
                              prefixIcon: const Icon(
                                Icons.email,
                                color: ColorSchemes.highlight,
                              ),
                              filled: false,
                              fillColor: ColorSchemes.backgroundPrimary
                                  .withOpacity(0.1),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your email";
                              }
                              if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$")
                                  .hasMatch(value)) {
                                return "Enter a valid email address";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 8),
                          // Password Field
                          TextFormField(
                            controller: _controllers["password"],
                            decoration: const InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: ColorSchemes.highlight,
                                  fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(24)),
                                  borderSide:
                                      BorderSide(color: ColorSchemes.subtle)),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: ColorSchemes.highlight,
                              ),
                              filled: false,
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your password";
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Button(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Handle login logic
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Login Successful")),
                              );
                            }
                          },
                          fullWidth: true,
                          child: const Text(
                            "Login",
                            style: TextStyle(color: ColorSchemes.textPrimary),
                          ),
                        ),
                        const SizedBox(height: 4),
                        // Register Navigation
                        Button(
                            fullWidth: true,
                            onPressed: () {
                              Navigator.of(context).pushNamed(Routes.register);
                            },
                            backgroundColor: ColorSchemes.subtle,
                            child: const Text(
                              "I'm new here",
                              style: TextStyle(color: ColorSchemes.textPrimary),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
