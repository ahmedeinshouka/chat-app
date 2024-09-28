import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:provider/provider.dart';
class TextBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final String timestamp;

  final TextStyle? senderTextStyle;
  final TextStyle? receiverTextStyle;
  final Color? senderBackgroundColor;
  final Color? receiverBackgroundColor;


  const TextBubble({
    required this.text,
    required this.isSender,
    this.senderTextStyle,
    this.receiverTextStyle,
    this.senderBackgroundColor,
    this.receiverBackgroundColor,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
   padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: isSender ? senderBackgroundColor : receiverBackgroundColor,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: isSender ? senderTextStyle : receiverTextStyle,
          ),
          Text(
            timestamp,
            style: const TextStyle(fontSize: 10.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}