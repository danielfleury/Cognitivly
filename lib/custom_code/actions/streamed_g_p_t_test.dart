// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

import 'package:dart_openai/dart_openai.dart';

String globalMessage = '';
Future<String> streamedGPTTest(String message) {
  globalMessage = message;
  final Completer<String> completer = Completer<String>();
  OpenAI.apiKey = "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";
  final chatStream = OpenAI.instance.chat.createStream(
    model: "gpt-3.5-turbo",
    messages: [
      OpenAIChatCompletionChoiceMessageModel(
        content: message,
        role: OpenAIChatMessageRole.user,
      )
    ],
  );

  chatStream.listen((streamChatCompletion) {
    final content = streamChatCompletion.choices.first.delta.content;
    if (!completer.isCompleted) {
      completer.complete(content);
    }
  });

  return completer.future;
}

void main() async {
  final response = await streamedGPTTest(globalMessage);
  print(response);
}
