import '/backend/backend.dart';
import '/components/headings_widget.dart';
import '/components/journey_component_widget.dart';
import '/components/navbar_widget.dart';
import '/components/send_email_widget.dart';
import '/components/social_icon_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'main_page_content_widget.dart' show MainPageContentWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MainPageContentModel extends FlutterFlowModel<MainPageContentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for headings component.
  late HeadingsModel headingsModel1;
  // Model for journeyComponent component.
  late JourneyComponentModel journeyComponentModel1;
  // Model for journeyComponent component.
  late JourneyComponentModel journeyComponentModel2;
  // Model for headings component.
  late HeadingsModel headingsModel2;
  // Model for socialIcon component.
  late SocialIconModel socialIconModel1;
  // Model for socialIcon component.
  late SocialIconModel socialIconModel2;
  // Model for socialIcon component.
  late SocialIconModel socialIconModel3;
  // Model for socialIcon component.
  late SocialIconModel socialIconModel4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    headingsModel1 = createModel(context, () => HeadingsModel());
    journeyComponentModel1 =
        createModel(context, () => JourneyComponentModel());
    journeyComponentModel2 =
        createModel(context, () => JourneyComponentModel());
    headingsModel2 = createModel(context, () => HeadingsModel());
    socialIconModel1 = createModel(context, () => SocialIconModel());
    socialIconModel2 = createModel(context, () => SocialIconModel());
    socialIconModel3 = createModel(context, () => SocialIconModel());
    socialIconModel4 = createModel(context, () => SocialIconModel());
  }

  void dispose() {
    navbarModel.dispose();
    headingsModel1.dispose();
    journeyComponentModel1.dispose();
    journeyComponentModel2.dispose();
    headingsModel2.dispose();
    socialIconModel1.dispose();
    socialIconModel2.dispose();
    socialIconModel3.dispose();
    socialIconModel4.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
