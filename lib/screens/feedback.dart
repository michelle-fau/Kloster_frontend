import 'package:flutter/material.dart';
import 'package:kloster/constants/color_schemes.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController _controller = TextEditingController();
  bool _isSubmitEnabled = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _isSubmitEnabled = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSchemes.backgroundPrimary,
      appBar: AppBar(
        title: const Text("Submit Feedback"),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Description
            const Text(
              "Whether restaurant details are incorrect, something didn't work, "
              "or you simply want to give us feedback – we'd love to hear from you "
              "and will get back to you as soon as possible. Your feedback helps us to "
              "keep improving the app.",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 24),
            // Comment Label
            const Text(
              "Comment",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Feedback Text Field
            TextField(
              controller: _controller,
              maxLines: 6,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: "Type your feedback here...",
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            const Spacer(),
            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isSubmitEnabled
                    ? () {
                        // Handle feedback submission
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Feedback submitted successfully!"),
                          ),
                        );
                        _controller.clear();
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isSubmitEnabled
                      ? ColorSchemes.primary
                      : Colors.grey.shade300,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "SUBMIT FEEDBACK",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
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
