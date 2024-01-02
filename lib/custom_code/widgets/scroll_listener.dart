// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../components/main_page_content_widget.dart';

class ScrollListener extends StatefulWidget {
  const ScrollListener({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _ScrollListenerState createState() => _ScrollListenerState();
}

class _ScrollListenerState extends State<ScrollListener> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        // Adjust container size based on scroll position
        setState(() {
          double scrollPosition = notification.metrics.pixels * 0.0003;
          FFAppState().scrollPosition = scrollPosition;
          // print("scrolled posisition is: $scrollPosition");
        });
        return true;
      },
      child: MainPageContentWidget(),
    );
  }
}
