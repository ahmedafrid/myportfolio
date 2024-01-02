import '/components/list_tile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'journey_component_widget.dart' show JourneyComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JourneyComponentModel extends FlutterFlowModel<JourneyComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for listTile component.
  late ListTileModel listTileModel1;
  // Model for listTile component.
  late ListTileModel listTileModel2;
  // Model for listTile component.
  late ListTileModel listTileModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listTileModel1 = createModel(context, () => ListTileModel());
    listTileModel2 = createModel(context, () => ListTileModel());
    listTileModel3 = createModel(context, () => ListTileModel());
  }

  void dispose() {
    listTileModel1.dispose();
    listTileModel2.dispose();
    listTileModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
