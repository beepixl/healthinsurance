import '/backend/api_requests/api_calls.dart';
import '/components/progress_indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'compare_plans_widget.dart' show ComparePlansWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComparePlansModel extends FlutterFlowModel<ComparePlansWidget> {
  ///  Local state fields for this page.

  bool showDifferences = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (planDifferences)] action in comparePlans widget.
  ApiCallResponse? compareResultsOutput;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
