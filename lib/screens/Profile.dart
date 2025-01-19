import 'package:flutter/material.dart';
import 'package:kloster/constants/color_schemes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSchemes.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: ColorSchemes.backgroundPrimary,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Profile Page",
          style: TextStyle(color: ColorSchemes.textPrimary),
        ),
        automaticallyImplyLeading: false, // Removes the default back button
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey.shade200,
                        child: const Icon(Icons.person,
                            size: 60, color: Colors.grey),
                      ),
                      Positioned(
                        right: 5,
                        top: 5,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Michelle",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Newbie | 0 Deals",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Use 5 more Deals to reach Level 2!",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            // Statistic Cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _statCard("11", "Deals"),
                  _statCard("€44", "Savings"),
                  _statCard("11", "Restaurants"),
                  _statCard("4", "Ratings"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const SizedBox(height: 20),

            // Menu Options
            Column(
              children: [
                _menuItem(Icons.bookmark, "Bookmarks"),
                _menuItem(Icons.menu_book, "Tutorial"),
                _menuItem(Icons.settings, "Settings"),
                _menuItem(Icons.support, "Feedback & Support"),
              ],
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2, // Highlight "Profile"
        selectedItemColor: Colors.black,
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

  // Statistic Card Widget
  Widget _statCard(String value, String label) {
    return Expanded(
      child: Container(
        height: 80,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              label,
              style:
                  const TextStyle(color: ColorSchemes.highlight, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  // Menu Item Widget
  Widget _menuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: ColorSchemes.textPrimary),
      title: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 14),
      onTap: () {
        // Add Navigation logic if needed
      },
    );
  }
}
