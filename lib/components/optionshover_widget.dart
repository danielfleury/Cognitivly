import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'optionshover_model.dart';
export 'optionshover_model.dart';

class OptionshoverWidget extends StatefulWidget {
  const OptionshoverWidget({super.key});

  @override
  _OptionshoverWidgetState createState() => _OptionshoverWidgetState();
}

class _OptionshoverWidgetState extends State<OptionshoverWidget> {
  late OptionshoverModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionshoverModel());

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
      onEnter: ((event) async {
        setState(() => _model.moreoptionsmouseHovered = true);
        logFirebaseEvent('OPTIONSHOVER_moreoptionsmouse_ON_TOGGLE_');
        logFirebaseEvent('moreoptionsmouse_update_app_state');
        setState(() {
          FFAppState().noteoptionshover = true;
        });
      }),
      onExit: ((event) async {
        setState(() => _model.moreoptionsmouseHovered = false);
        logFirebaseEvent('OPTIONSHOVER_moreoptionsmouse_ON_TOGGLE_');
        logFirebaseEvent('moreoptionsmouse_update_app_state');
        setState(() {
          FFAppState().noteoptionshover = false;
        });
      }),
      child: const Icon(
        Icons.keyboard_control_sharp,
        color: Color(0xFF646464),
        size: 20.0,
      ),
    );
  }
}
