import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter UI Task',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              // Image widget (profile or avatar)
              const CircleAvatar(
                radius: 70, // Increased size
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&auto=format&fit=crop&w=200&q=80'
                ), // A generic smiling man
                backgroundColor: Colors.grey,
              ),
              const SizedBox(height: 24),
              // Text widget
              const Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 28, // Increased size
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              // Icon widget
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 60, // Increased size
              ),
              const SizedBox(height: 32),
              // Form containing TextFields and Button
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.grey.shade300),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(24.0), // Increased padding
                  child: Column(
                    children: [
                      // Email TextField
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(fontSize: 18),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18), // Increased size
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Password TextField
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 18),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18), // Increased size
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Button (Submit)
                      SizedBox(
                        width: double.infinity,
                        height: 56, // Increased height
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text('Submit', style: TextStyle(fontSize: 20)), // Increased text size
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, size: 30), // Increased icon size
      ),
    );
  }
}
