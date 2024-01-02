import '/components/main_page_content_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'test_widget.dart' show TestWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestModel extends FlutterFlowModel<TestWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for mainPageContent component.
  late MainPageContentModel mainPageContentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainPageContentModel = createModel(context, () => MainPageContentModel());
  }

  void dispose() {
    mainPageContentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
