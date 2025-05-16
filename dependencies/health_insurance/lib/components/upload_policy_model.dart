import '/backend/api_requests/api_calls.dart';
import '/components/disclaimer_widget.dart';
import '/components/upload_policy_container2_widget.dart';
import '/components/upload_policy_container_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'upload_policy_widget.dart' show UploadPolicyWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadPolicyModel extends FlutterFlowModel<UploadPolicyWidget> {
  ///  Local state fields for this component.

  bool showError = false;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (uploadFile)] action in DashedContainer widget.
  ApiCallResponse? uploadedFileCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
