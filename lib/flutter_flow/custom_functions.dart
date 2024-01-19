import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? replaceLineBreaks(String? rawtext) {
  String? input = rawtext;
  String processedInput = input!.replaceAll('\n', ' ');

  return processedInput;
}

String? calculateGAD7Score(
  double q1,
  double q2,
  double q3,
  double q4,
  double q5,
  double q6,
  double q7,
) {
// Calculating the total score
  // Calculating the total score
  double totalScore = q1 + q2 + q3 + q4 + q5 + q6 + q7;

  // Interpretation based on the total score
  if (totalScore >= 0 && totalScore <= 4) {
    return 'Minimal anxiety';
  } else if (totalScore >= 5 && totalScore <= 9) {
    return 'Mild anxiety';
  } else if (totalScore >= 10 && totalScore <= 14) {
    return 'Moderate anxiety';
  } else {
    return 'Severe anxiety';
  }
}

List<String> extractPlanList(String? rawText) {
  String? inputText = rawText;

  final regExp = RegExp(r'(\d+\.)');
  final matches = regExp.allMatches(
      inputText!); // Using "!" to unwrap nullable rawText as we've checked its nullity above.
  List<String> entries = [];

  for (int i = 0; i < matches.length; i++) {
    int start = matches.elementAt(i).start;
    int end = i + 1 < matches.length
        ? matches.elementAt(i + 1).start
        : inputText.length;
    String entry = inputText.substring(start, end).trim();
    entries.add(entry);
  }

  return entries;
}

String? replaceDoubleQuotesLines(String? rawstring) {
  String replacedLineBreaks = rawstring!.replaceAll('\n', ' ');
  String replacedText = replacedLineBreaks!.replaceAll('"', "'");

  return replacedText;
}

String? stringifyJson(dynamic json) {
  // Create a function that converts a json into a string
  return jsonEncode(json);
}

String? calculatePHQ9Score(
  double q1,
  double q2,
  double q3,
  double q4,
  double q5,
  double q6,
  double q7,
  double q8,
  double q9,
) {
// Calculating the total score
  double totalScore = q1 + q2 + q3 + q4 + q5 + q6 + q7 + q8 + q9;

  // Interpretation based on the total score
  if (totalScore >= 0 && totalScore <= 4) {
    return 'Minimal or no depression symptoms';
  } else if (totalScore >= 5 && totalScore <= 9) {
    return 'Mild depression symptoms';
  } else if (totalScore >= 10 && totalScore <= 14) {
    return 'Moderate depression symptoms';
  } else if (totalScore >= 15 && totalScore <= 19) {
    return 'Moderately severe depression symptoms';
  } else {
    return 'Severe depression symptoms';
  }
}

String? stringListtoString(List<String>? stringList) {
  if (stringList == null) {
    return null;
  }
  return stringList.join(', ');
}
