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
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'upload_policy_model.dart';
export 'upload_policy_model.dart';

class UploadPolicyWidget extends StatefulWidget {
  const UploadPolicyWidget({
    super.key,
    this.customerID,
  });

  final String? customerID;

  @override
  State<UploadPolicyWidget> createState() => _UploadPolicyWidgetState();
}

class _UploadPolicyWidgetState extends State<UploadPolicyWidget> {
  late UploadPolicyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadPolicyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 32.0,
                child: Divider(
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
              ),
              Text(
                'UPLOAD POLICY PDF',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.anekLatin(
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
              Text(
                'Get a comparison with best ABHI plans',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      font: GoogleFonts.anekLatin(
                        fontWeight: FontWeight.normal,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleMedium.fontStyle,
                    ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFF4CE),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidLightbulb,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 16.0,
                      ),
                      Text(
                        'Note: We are not storing the document',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.anekLatin(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondary,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ].divide(SizedBox(width: 10.0)),
                  ),
                ),
              ),
              if (!_model.showError)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    final selectedFiles = await selectFiles(
                      multiFile: false,
                    );
                    if (selectedFiles != null) {
                      safeSetState(() => _model.isDataUploading = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      try {
                        selectedUploadedFiles = selectedFiles
                            .map((m) => FFUploadedFile(
                                  name: m.storagePath.split('/').last,
                                  bytes: m.bytes,
                                ))
                            .toList();
                      } finally {
                        _model.isDataUploading = false;
                      }
                      if (selectedUploadedFiles.length ==
                          selectedFiles.length) {
                        safeSetState(() {
                          _model.uploadedLocalFile =
                              selectedUploadedFiles.first;
                        });
                      } else {
                        safeSetState(() {});
                        return;
                      }
                    }

                    _model.uploadedFileCopy = await UploadFileCall.call(
                      file: _model.uploadedLocalFile,
                    );

                    _model.showError = !getJsonField(
                      (_model.uploadedFileCopy?.jsonBody ?? ''),
                      r'''$.success''',
                    );
                    safeSetState(() {});

                    safeSetState(() {});
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 115.0,
                    child: custom_widgets.DashedContainer(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 115.0,
                      borderColor: Color(0xFFD5D7DE),
                      borderWeight: 2.0,
                      borderRadius: 24.0,
                      borderSpacing: 6.0,
                      innerContainer: () => UploadPolicyContainer2Widget(),
                    ),
                  ),
                ),
              if (_model.showError)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.showError = false;
                    safeSetState(() {});
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 115.0,
                    child: custom_widgets.DashedContainer(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 115.0,
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderWeight: 2.0,
                      borderRadius: 24.0,
                      borderSpacing: 6.0,
                      innerContainer: () => UploadPolicyContainerWidget(),
                    ),
                  ),
                ),
              FFButtonWidget(
                onPressed: _model.showError
                    ? null
                    : () async {
                        Navigator.pop(context);

                        context.pushNamed(
                          PolicyAssitWidget.routeName,
                          queryParameters: {
                            'policyName': serializeParam(
                              valueOrDefault<String>(
                                getJsonField(
                                  (_model.uploadedFileCopy?.jsonBody ?? ''),
                                  r'''$.filename''',
                                )?.toString(),
                                'filename',
                              ),
                              ParamType.String,
                            ),
                            'customerID': serializeParam(
                              widget!.customerID,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                text: 'Submit',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50.0,
                  padding: EdgeInsets.all(8.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        font: GoogleFonts.anekLatin(
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).titleMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: DisclaimerWidget(),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                child: Text(
                  'Disclaimer',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        font: GoogleFonts.anekLatin(
                          fontWeight: FontWeight.w600,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                ),
              ),
            ].divide(SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
