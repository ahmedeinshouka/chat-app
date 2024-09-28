import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:provider/provider.dart';
class ChatInput extends StatelessWidget {
  final TextEditingController controller;
  final Function() onSendPressed;

  const ChatInput({required this.controller, required this.onSendPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Type your message',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onChanged: (text) {
              // Validate or process message content here (optional)
            },
            onSubmitted: (text) {
              onSendPressed(); // Call the callback to handle sending
            },
          ),
        ),
        IconButton(
          icon: Icon(Icons.send),
          onPressed: onSendPressed,
        ),
      ],
    );
  }
}