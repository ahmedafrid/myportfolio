import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'headings_model.dart';
export 'headings_model.dart';

class HeadingsWidget extends StatefulWidget {
  const HeadingsWidget({
    Key? key,
    this.firstText,
    required this.secondText,
  }) : super(key: key);

  final String? firstText;
  final String? secondText;

  @override
  _HeadingsWidgetState createState() => _HeadingsWidgetState();
}

class _HeadingsWidgetState extends State<HeadingsWidget> {
  late HeadingsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeadingsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return RichText(
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      text: TextSpan(
        children: [
          TextSpan(
            text: valueOrDefault<String>(
              widget.firstText,
              'My',
            ),
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Nunito Sans',
                  color: FlutterFlowTheme.of(context).primary,
                ),
          ),
          TextSpan(
            text: valueOrDefault<String>(
              widget.secondText,
              'Journey',
            ),
            style: TextStyle(),
          )
        ],
        style: FlutterFlowTheme.of(context).titleLarge,
      ),
    );
  }
}
