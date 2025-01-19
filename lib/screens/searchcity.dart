import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CitySelectionPage(),
    );
  }
}

class CitySelectionPage extends StatefulWidget {
  const CitySelectionPage({super.key});

  @override
  _CitySelectionPageState createState() => _CitySelectionPageState();
}

class _CitySelectionPageState extends State<CitySelectionPage> {
  // Simulate a large list of cities from around the world
  final List<Map<String, dynamic>> cities = [
    {'name': 'Aachen', 'deals': 122},
    {'name': 'Amsterdam', 'deals': 416},
    {'name': 'Berlin', 'deals': 1190},
    {'name': 'Bangalore', 'deals': 154},
    {'name': 'Buenos Aires', 'deals': 288},
    {'name': 'Paris', 'deals': 874},
    {'name': 'London', 'deals': 593},
    {'name': 'New York', 'deals': 1023},
    {'name': 'Tokyo', 'deals': 764},
    {'name': 'Sydney', 'deals': 431},
    {'name': 'Rome', 'deals': 134},
    {'name': 'Cape Town', 'deals': 199},
    {'name': 'Dubai', 'deals': 254},
    {'name': 'Mexico City', 'deals': 189},
    // Add as many cities as needed for your global dataset
  ];

  // Search query controller
  final TextEditingController _searchController = TextEditingController();

  // Filtered city list
  List<Map<String, dynamic>> _filteredCities = [];

  @override
  void initState() {
    super.initState();
    _filteredCities = cities; // Show all cities initially
    _searchController.addListener(_filterCities);
  }

  // Function to filter cities based on search input
  void _filterCities() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      _filteredCities = cities
          .where((city) => city['name'].toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select City'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search bar
            TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Search City',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // List of cities with deal counts
            Expanded(
              child: ListView.builder(
                itemCount: _filteredCities.length,
                itemBuilder: (context, index) {
                  var city = _filteredCities[index];
                  return ListTile(
                    title: Text(city['name']),
                    subtitle: Text('${city['deals']} Deals'),
                    trailing: const Icon(Icons.check_circle, color: Colors.green),
                    onTap: () {
                      // Handle city selection
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

