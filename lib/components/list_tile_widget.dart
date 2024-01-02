import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_tile_model.dart';
export 'list_tile_model.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({
    Key? key,
    this.title,
    this.body,
    this.date,
  }) : super(key: key);

  final String? title;
  final String? body;
  final String? date;

  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  late ListTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListTileModel());

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

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.title,
                          'title',
                        ),
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  ),
                  if (widget.body != null && widget.body != '')
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.body,
                            'body',
                          ),
                          style: FlutterFlowTheme.of(context).labelSmall,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.date,
              'date',
            ),
            style: FlutterFlowTheme.of(context).displaySmall,
          ),
        ],
      ),
    );
  }
}
