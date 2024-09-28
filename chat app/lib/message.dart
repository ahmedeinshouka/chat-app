// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Message {
  final String content;
  final String senderId;
  final String timestamp;

  const Message({
    required this.content,
    required this.senderId,
    required this.timestamp,
  });
  }