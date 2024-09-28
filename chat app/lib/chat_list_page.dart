// chat_list_page.dart (New File)

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_2/chat_screen.dart';
import 'package:provider/provider.dart';

// Import ContactState and ContactTile from your existing code
import 'package:flutter_application_2/contact_state.dart'; // Assuming contact_state.dart is in the same directory as chat_list_page.dart
import 'package:flutter_application_2/contact_tile.dart'; // Assuming contact_tile.dart is in the same directory
import 'package:flutter_application_2/utils.dart'; // Import utils.dart
class ChatListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search functionality (implement later)
            },
          ),
        ],
      ),
      body: Consumer<ContactState>(
        builder: (context, state, child) {
          return ListView.builder(
            itemCount: state.contacts.length,
            itemBuilder: (context, index) {
              final contact = state.contacts[index];
              final imagePath = getImagePath(contact.name); // Use a helper function for clarity
              return ContactTile(
                contact: contact,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(senderId: contact.name),
                    ),
                  );
                },
                imagePath: imagePath,
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages'), // Mark Messages as selected
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Love'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
    );
  }
}
