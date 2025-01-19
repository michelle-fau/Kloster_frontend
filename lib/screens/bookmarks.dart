
// import 'package:flutter/material.dart';
// import 'package:kloster/constants/color_schemes.dart';

// class BookmarksPage extends StatelessWidget {
//   const BookmarksPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Sample bookmark data
//     final bookmarks = [
//       {
//         "image": "assets/images/blond_coffee.jpg", // Replace with your image asset
//         "title": "blond.",
//         "rating": 4.9,
//         "reviews": 189,
//         "distance": "6,798.92 mi",
//         "tags": ["2for1 Hot Drink + Banana Bread", "FREE"]
//       },
//       {
//         "image": "assets/images/burreatos.jpg",
//         "title": "BURREATOS",
//         "rating": 4.9,
//         "reviews": 204,
//         "distance": "6,886.64 mi",
//         "tags": ["€10 Discount", "FREE Drink"]
//       },
//       {
//         "image": "assets/images/bubble_tea.jpg",
//         "title": "ChaHaus Bubble Tea Café",
//         "rating": 4.8,
//         "reviews": 250,
//         "distance": "6,886.44 mi",
//         "tags": ["2for1 Bubble Tea", "2for1 Matcha Drink"]
//       },
//       {
//         "image": "assets/images/sieben.jpg",
//         "title": "sieben&sechzig",
//         "rating": 4.9,
//         "reviews": 76,
//         "distance": "6,887.25 mi",
//         "tags": ["2for1 Cake", "2for1 Coffee Specialty"]
//       },
//       {
//         "image": "assets/images/banh_mi.jpg",
//         "title": "Banh Mi & Bubbles",
//         "rating": 4.9,
//         "reviews": 62,
//         "distance": "6,886.52 mi",
//         "tags": ["2for1 Bowls/Banh-Mi", "2for1 Cocktail"]
//       },
//     ];

//     return Scaffold(
//       backgroundColor: ColorSchemes.backgroundPrimary,
//       appBar: AppBar(
//         title: const Text("Bookmarks"),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16),
//         itemCount: bookmarks.length,
//         itemBuilder: (context, index) {
//           final item = bookmarks[index];
//           return Card(
//             margin: const EdgeInsets.only(bottom: 16),
//             elevation: 2,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(12),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Image Section
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(8),
//                     child: Image.asset(
//                       item["image"]!,
//                       height: 60,
//                       width: 60,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   const SizedBox(width: 12),
//                   // Content Section
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // Title
//                         Text(
//                           item["title"]!,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                         const SizedBox(height: 4),
//                         // Rating & Distance
//                         Row(
//                           children: [
//                             const Icon(Icons.favorite, color: Colors.red, size: 16),
//                             const SizedBox(width: 4),
//                             Text(
//                               "${item["rating"]} (${item["reviews"]})",
//                               style: TextStyle(color: Colors.grey.shade600),
//                             ),
//                             const Spacer(),
//                             Text(
//                               item["distance"]!,
//                               style: TextStyle(color: Colors.grey.shade600),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 8),
//                         // Tags Section
//                         Wrap(
//                           spacing: 8,
//                           children: (item["tags"] as List<String>).map((tag) {
//                             final isFree = tag.toUpperCase() == "FREE";
//                             return Container(
//                               padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                               decoration: BoxDecoration(
//                                 color: isFree ? Colors.green.shade100 : Colors.blue.shade100,
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: Text(
//                                 tag,
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.bold,
//                                   color: isFree ? Colors.green : Colors.blue,
//                                 ),
//                               ),
//                             );
//                           }).toList(),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//       // Bottom Navigation Bar
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 2, // Assuming 'Profile' is at index 3
//         selectedItemColor: ColorSchemes.secondary,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.explore),
//             label: "Discover",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book),
//             label: "Bookings",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile",
//           ),
//         ],
//       ),
//     );
//   }
// }
