import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'plan_recommendadtion_widget.dart' show PlanRecommendadtionWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlanRecommendadtionModel
    extends FlutterFlowModel<PlanRecommendadtionWidget> {
  ///  Local state fields for this page.

  bool plansLoaded = false;

  String? selectedPlan;

  String? selectedPlanName;

  String sessionID = 'string';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (generateToken)] action in planRecommendadtion widget.
  ApiCallResponse? tokenGenerated;
  // Stores action output result for [Backend Call - API (fetchPlans)] action in planRecommendadtion widget.
  ApiCallResponse? plansFetched;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
