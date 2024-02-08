import 'package:flutter/material.dart';
import 'package:flutter_application_1/joinroom.dart';

class SportsPage extends StatelessWidget {
  const SportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sports')),
      body: Padding(
        padding: const EdgeInsets.all(
            8.0), // Padding around the entire set of buttons
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildButton(context, "Badminton"),
            const SizedBox(height: 2.0), // Space between buttons
            buildButton(context, "Football"),

            const SizedBox(height: 2.0),
            buildButton(context, "Volleyball"),

            const SizedBox(height: 2.0), // Space between buttons
            buildButton(context, "Ball Badminton"),

            const SizedBox(height: 2.0),
            buildButton(context, "Handball"),

            const SizedBox(height: 2.0),
            buildButton(context, "Cricket"),

            const SizedBox(height: 2.0),
            buildButton(context, "Basketball"),
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String title) {
    return SizedBox(
      width: double.infinity, // This will cover the entire width
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => joinroom(),
            ),
          );
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.blue,
          side: const BorderSide(color: Colors.blue),
          padding: const EdgeInsets.all(12.0),
          // Padding inside the button
        ),
        child: Text(title),
      ),
    );
  }
}
