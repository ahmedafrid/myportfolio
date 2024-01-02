// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:text_typewriter/text_typewriter.dart';

class TypingText extends StatefulWidget {
  const TypingText({
    Key? key,
    this.width,
    this.height,
    required this.text,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String text;

  @override
  _TypingTextState createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText> {
  @override
  Widget build(BuildContext context) {
    return Typewriter(
      // ['Flutter', 'FlutterFlow', 'React'],
      ['Frontend Developer_'],

      loop: false,
      erase: true,
      textstyle: TextStyle(
          color: const Color.fromARGB(255, 255, 255, 255),
          fontSize: 22,
          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily),

      tailingtext: '_',
    );
  }
}
