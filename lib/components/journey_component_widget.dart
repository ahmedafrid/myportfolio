import '/components/list_tile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'journey_component_model.dart';
export 'journey_component_model.dart';

class JourneyComponentWidget extends StatefulWidget {
  const JourneyComponentWidget({
    Key? key,
    this.icon,
    this.title,
    this.design,
    this.title1,
    this.body1,
    this.date1,
    this.title2,
    this.body2,
    this.date2,
    this.title3,
    this.body3,
    this.date3,
  }) : super(key: key);

  final Widget? icon;
  final String? title;
  final int? design;
  final String? title1;
  final String? body1;
  final String? date1;
  final String? title2;
  final String? body2;
  final String? date2;
  final String? title3;
  final String? body3;
  final String? date3;

  @override
  _JourneyComponentWidgetState createState() => _JourneyComponentWidgetState();
}

class _JourneyComponentWidgetState extends State<JourneyComponentWidget> {
  late JourneyComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JourneyComponentModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                widget.icon!,
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.title,
                      'title',
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.design == 1)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Line_4.png',
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  if (widget.design == 2)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Line_5.png',
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(22.0, 0.0, 0.0, 0.0),
                      child: Container(
                        height: 150.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            wrapWithModel(
                              model: _model.listTileModel1,
                              updateCallback: () => setState(() {}),
                              child: ListTileWidget(
                                title: widget.title1,
                                body: widget.body1,
                                date: widget.date1,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.listTileModel2,
                                updateCallback: () => setState(() {}),
                                child: ListTileWidget(
                                  title: widget.title2,
                                  body: widget.body2,
                                  date: widget.date2,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.listTileModel3,
                                updateCallback: () => setState(() {}),
                                child: ListTileWidget(
                                  title: widget.title3,
                                  body: widget.body3,
                                  date: widget.date3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
