import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'send_email_widget.dart' show SendEmailWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SendEmailModel extends FlutterFlowModel<SendEmailWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode1;
  TextEditingController? projectNameController1;
  String? Function(BuildContext, String?)? projectNameController1Validator;
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode2;
  TextEditingController? projectNameController2;
  String? Function(BuildContext, String?)? projectNameController2Validator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    projectNameFocusNode1?.dispose();
    projectNameController1?.dispose();

    projectNameFocusNode2?.dispose();
    projectNameController2?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
