import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'social_icon_model.dart';
export 'social_icon_model.dart';

class SocialIconWidget extends StatefulWidget {
  const SocialIconWidget({
    Key? key,
    required this.icon,
    bool? hovered,
  })  : this.hovered = hovered ?? false,
        super(key: key);

  final Widget? icon;
  final bool hovered;

  @override
  _SocialIconWidgetState createState() => _SocialIconWidgetState();
}

class _SocialIconWidgetState extends State<SocialIconWidget> {
  late SocialIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialIconModel());

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

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: _model.isHovered
              ? FlutterFlowTheme.of(context).primary
              : Color(0x00000000),
          shape: BoxShape.circle,
          border: Border.all(
            color: Color(0xFF090918),
          ),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: widget.icon!,
        ),
      ),
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered = true);
        logFirebaseEvent('SOCIAL_ICON_MouseRegion_0qskp9l2_ON_TOGG');
        logFirebaseEvent('MouseRegion_update_component_state');
        setState(() {
          _model.isHovered = true;
        });
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered = false);
        logFirebaseEvent('SOCIAL_ICON_MouseRegion_0qskp9l2_ON_TOGG');
        logFirebaseEvent('MouseRegion_update_component_state');
        setState(() {
          _model.isHovered = false;
        });
      }),
    );
  }
}
