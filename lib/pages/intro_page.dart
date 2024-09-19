import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, right: 80, bottom: 40, top: 160),
              child: Image.asset(
                'lib/images/frappe.jpg',
                fit: BoxFit.contain,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                "We deliver coffees at your doorstep",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Fresh items everyday",
            ),
            const SizedBox(height: 40), // Replaces Spacer
            GestureDetector(
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const HomePage();
              })),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(24),
                child: const Text(
                  "Get started",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40), // Adds padding at the bottom
          ],
        ),
      ),
    );
  }
}
