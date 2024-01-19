// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class HighlightTextWidget extends StatefulWidget {
  final String text;
  final List<String> highlightWords;
  final double fontSize;
  final Color color;
  final Color highlightColor;
  final double? width;
  final double? height;

  const HighlightTextWidget({
    Key? key,
    required this.text,
    required this.highlightWords,
    required this.fontSize,
    required this.color,
    required this.highlightColor,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  _HighlightTextWidgetState createState() => _HighlightTextWidgetState();
}

class _HighlightTextWidgetState extends State<HighlightTextWidget> {
  @override
  Widget build(BuildContext context) {
    List<TextSpan> spans = [];
    widget.text.splitMapJoin(
      RegExp('(${widget.highlightWords.join('|')})'),
      onMatch: (match) {
        spans.add(
          TextSpan(
            text: match.group(0),
            style: TextStyle(
              fontSize: widget.fontSize,
              color: widget.color,
              backgroundColor: widget.highlightColor,
            ),
          ),
        );
        return '';
      },
      onNonMatch: (nonMatch) {
        spans.add(
          TextSpan(
            text: nonMatch,
            style: TextStyle(
              fontSize: widget.fontSize,
              color: widget.color,
            ),
          ),
        );
        return '';
      },
    );
    return Container(
      width: widget.width,
      height: widget.height,
      child: RichText(
        text: TextSpan(
          children: spans,
        ),
      ),
    );
  }
}
