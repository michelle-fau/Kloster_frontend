import 'package:flutter/material.dart';
import 'package:kloster/constants/color_schemes.dart';
import 'package:kloster/constants/consts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSchemes.backgroundPrimary,
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: ColorSchemes.backgroundPrimary,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorSchemes.textPrimary),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(PAGE_PADDING_MOBILE),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Account Section
            const Text(
              "Account",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading:
                  const Icon(Icons.person, color: ColorSchemes.textPrimary),
              title: const Text("Edit Profile"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Navigate to Edit Profile page
              },
            ),
            const SizedBox(height: 16),

            // Subscription Section
            const Text(
              "Subscription",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Monthly",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              "Your plan will automatically renew on 29.11.2024 and you'll be charged €6.99",
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorSchemes.primary,
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // Handle voucher code action
              },
              child: const Text("Enter voucher code"),
            ),
            const SizedBox(height: 8),
            Center(
              child: TextButton(
                onPressed: () {
                  // Handle cancel plan action
                },
                child: const Text(
                  "Cancel plan",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            const Spacer(),

            // Sign Out Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.grey.shade300),
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // Handle sign-out action
              },
              child: const Text(
                "SIGN OUT",
                style: TextStyle(color: ColorSchemes.textPrimary),
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Assuming 'Profile' is at index 3
        selectedItemColor: ColorSchemes.secondary,
        unselectedItemColor: ColorSchemes.highlight,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
