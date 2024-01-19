// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> transcribeAudio(String audioUrl) async {
  var headers = {
    'authorization': 'c821551e3a034e998aa8ebeee8c35900',
    'Content-Type': 'application/json',
  };

  var body = jsonEncode({
    'audio_url': audioUrl,
    'speaker_labels': true, // setting speaker_labels to true
  });

  // Send POST request to AssemblyAI to start transcription job
  var response = await http.post(
    Uri.parse('https://api.assemblyai.com/v2/transcript'),
    headers: headers,
    body: body,
  );

  Map<String, dynamic> jsonResponse = jsonDecode(response.body);
  String jobId = jsonResponse['id'];
  String dialogue_transcript = '';

  // Check the status of the transcription job periodically
  while (jsonResponse['status'] != 'completed') {
    await Future.delayed(Duration(seconds: 5)); // Wait for 5 seconds

    response = await http.get(
      Uri.parse('https://api.assemblyai.com/v2/transcript/$jobId'),
      headers: headers,
    );

    jsonResponse = jsonDecode(response.body);
    // Building dialogue transcript
    if (jsonResponse['status'] == 'completed') {
      List utterances = jsonResponse['utterances'];
      for (var utterance in utterances) {
        dialogue_transcript +=
            "Speaker ${utterance['speaker']}: ${utterance['text']}\n";
      }
    }
  }

  // Once the job is done, the dialogue transcript will be returned
  return dialogue_transcript;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
