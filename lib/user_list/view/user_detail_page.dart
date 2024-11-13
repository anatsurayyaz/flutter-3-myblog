import 'package:flutter/material.dart';
import 'package:flutter_user_list_cubit/user_list/user_list.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink.shade200, // Soft pink for app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              user.title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.pink.shade700, // Soft pink title color
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              user.body,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 16,
                color: Colors.black87, // Text color for body
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate to previous post logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade100, // Soft pink button color
                  ),
                  child: const Text("Prev"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to next post logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade100, // Soft pink button color
                  ),
                  child: const Text("Next"),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Remove the current post
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255), // Lighter soft pink for remove button
              ),
              child: const Text("Remove"),
            ),
          ],
        ),
      ),
    );
  }
}
