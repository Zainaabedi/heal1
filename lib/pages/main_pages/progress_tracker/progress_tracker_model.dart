import '/components/action_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/permissions_util.dart';
import 'progress_tracker_widget.dart' show ProgressTrackerWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProgressTrackerModel extends FlutterFlowModel<ProgressTrackerWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Action component.
  late ActionModel actionModel;

  @override
  void initState(BuildContext context) {
    actionModel = createModel(context, () => ActionModel());
  }

  @override
  void dispose() {
    actionModel.dispose();
  }
}
