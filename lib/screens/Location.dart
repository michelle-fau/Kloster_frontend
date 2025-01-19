
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:kloster/constants/color_schemes.dart';

// class LocationPage extends StatefulWidget {
//   const LocationPage({super.key});

//   @override
//   _LocationPageState createState() => _LocationPageState();
// }

// class _LocationPageState extends State<LocationPage> {
//   late GoogleMapController _mapController;

//   // Sample marker data 
//   final List<Marker> _markers = [
//     const Marker(
//       markerId: MarkerId('1'),
//       position: LatLng(51.1657, 10.4515), // Germany
//       infoWindow: InfoWindow(title: 'Germany', snippet: 'Popular Location'),
//     ),
//     const Marker(
//       markerId: MarkerId('2'),
//       position: LatLng(48.8566, 2.3522), // France (Paris)
//       infoWindow: InfoWindow(title: 'Paris', snippet: 'City of Love'),
    // ),
//     const Marker(
//       markerId: MarkerId('3'),
//       position: LatLng(52.5200, 13.4050), // Berlin
//       infoWindow: InfoWindow(title: 'Berlin', snippet: 'Capital of Germany'),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Select City",
//           style: TextStyle(color: ColorSchemes.textPrimary, fontWeight: FontWeight.bold),
//         ),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: ColorSchemes.textPrimary),
//           onPressed: () => Navigator.pop(context),
//         ),
//         centerTitle: true,
//         backgroundColor: ColorSchemes.backgroundPrimary,
//         elevation: 0,
//       ),
//       body: Stack(
//         children: [
//           // Google Maps
//           GoogleMap(
//             initialCameraPosition: const CameraPosition(
//               target: LatLng(50.8503, 4.3517), // Default: Brussels, Belgium
//               zoom: 5,
//             ),
//             markers: Set.from(_markers),
//             onMapCreated: (GoogleMapController controller) {
//               _mapController = controller;
//             },
//           ),
//           // Filter and List Buttons
//           Positioned(
//             bottom: 100,
//             left: 16,
//             right: 16,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     // Filter logic here
//                   },
//                   icon: const Icon(Icons.filter_list),
//                   label: const Text("Filter"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: ColorSchemes.backgroundPrimary,
//                     foregroundColor: Colors.black,
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 12,
//                       horizontal: 20,
//                     ),
//                   ),
//                 ),
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     // List view logic here
//                   },
//                   icon: const Icon(Icons.list),
//                   label: const Text("List"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: ColorSchemes.backgroundPrimary,
//                     foregroundColor: Colors.black,
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 12,
//                       horizontal: 20,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0, // Assuming Discover is active
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.explore),
//             label: "Discover",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.feed),
//             label: "Feed",
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
