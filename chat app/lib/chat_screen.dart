// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Import remaining classes (Message, TextBubble, ChatInput) from your existing code
import 'message.dart'; // Assuming message.dart is in the same directory
import 'text_bubble.dart'; // Assuming text_bubble.dart is in the same directory
import 'chat_input.dart'; // Assuming chat_input.dart is in the same directory
import 'package:flutter_application_2/chat_screen.dart'; // Import for clarity (already present)
import 'package:flutter_application_2/contact_state.dart'; // Import for clarity (already present)

class ChatScreen extends StatefulWidget {
  final String senderId;

  const ChatScreen({required this.senderId});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _messageController = TextEditingController();
  List<Message> messages = []; // Stores chat history

  final TextStyle senderTextStyle = const TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  final TextStyle receiverTextStyle = const TextStyle(color: Colors.black);
  final senderBackgroundColor = Colors.blue[400]?.withOpacity(0.8); // Check for null and apply opacity
  final receiverBackgroundColor = Colors.grey[200]?.withOpacity(0.8); // Check for null and apply opacity

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with ${widget.senderId}'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return TextBubble(
                  text: message.content,
                  isSender: message.senderId == widget.senderId,
                  senderTextStyle: senderTextStyle,
                  receiverTextStyle: receiverTextStyle,
                  senderBackgroundColor: senderBackgroundColor,
                  receiverBackgroundColor: receiverBackgroundColor, timestamp: '',
                );
              },
            ),
          ),
          ChatInput(
            controller: _messageController,
            onSendPressed: () {
              if (_messageController.text.isNotEmpty) {
                final message = Message(
                  content: _messageController.text,
                  senderId: widget.senderId,
                  timestamp: DateTime.now().toString(), // Optional timestamp
                );
                setState(() {
                  messages.add(message);
                  _messageController.clear();
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
