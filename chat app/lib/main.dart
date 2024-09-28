// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_2/contact_state.dart';
import 'package:provider/provider.dart';
import 'chat_list_page.dart';
import 'package:flutter_application_2/contact_tile.dart';
import 'package:flutter_application_2/chat_screen.dart';
// main.dart (Update)

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ContactState>(
      create: (context) => ContactState(),
      child: MaterialApp(
        // ... existing theme settings
        home: ChatListPage(), // Use ChatListPage as the home now
      ),
    );
  }
}


