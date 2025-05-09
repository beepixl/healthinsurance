import '/backend/api_requests/api_calls.dart';
import '/components/progress_indicator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'dart:math' as math;
import 'policy_assit_copy_widget.dart' show PolicyAssitCopyWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PolicyAssitCopyModel extends FlutterFlowModel<PolicyAssitCopyWidget> {
  ///  Local state fields for this page.

  int? selectedPage = 1;

  int? selectedIndex = 0;

  bool showChatbot = false;

  List<String> questionsAsked = [];
  void addToQuestionsAsked(String item) => questionsAsked.add(item);
  void removeFromQuestionsAsked(String item) => questionsAsked.remove(item);
  void removeAtIndexFromQuestionsAsked(int index) =>
      questionsAsked.removeAt(index);
  void insertAtIndexInQuestionsAsked(int index, String item) =>
      questionsAsked.insert(index, item);
  void updateQuestionsAskedAtIndex(int index, Function(String) updateFn) =>
      questionsAsked[index] = updateFn(questionsAsked[index]);

  List<String> answerFromBot = [];
  void addToAnswerFromBot(String item) => answerFromBot.add(item);
  void removeFromAnswerFromBot(String item) => answerFromBot.remove(item);
  void removeAtIndexFromAnswerFromBot(int index) =>
      answerFromBot.removeAt(index);
  void insertAtIndexInAnswerFromBot(int index, String item) =>
      answerFromBot.insert(index, item);
  void updateAnswerFromBotAtIndex(int index, Function(String) updateFn) =>
      answerFromBot[index] = updateFn(answerFromBot[index]);

  String? sessionID;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (queryURL)] action in policyAssitCopy widget.
  ApiCallResponse? topBenefitsOutput2;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for BenefitsSelection widget.
  ScrollController? benefitsSelection;
  // Stores action output result for [Backend Call - API (queryURL)] action in whatsCovered widget.
  ApiCallResponse? whatsCoveredOutput;
  // Stores action output result for [Backend Call - API (queryURL)] action in whatsnotCovered widget.
  ApiCallResponse? whatsNotCoveredOutput;
  // Stores action output result for [Backend Call - API (queryURL)] action in optionalCovered widget.
  ApiCallResponse? optionalCoversOutput;
  // Stores action output result for [Backend Call - API (queryURL)] action in valueadded widget.
  ApiCallResponse? valueAddedBenefitsOutput1;
  // Stores action output result for [Backend Call - API (queryURL)] action in optionalCovered widget.
  ApiCallResponse? waitingPeriodOutput;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for WhatsCoveredList widget.
  ScrollController? whatsCoveredList;
  // State field(s) for WhatsNotCovered widget.
  ScrollController? whatsNotCovered;
  // State field(s) for OptionalCovers widget.
  ScrollController? optionalCovers;
  // State field(s) for ValueAddedBenefits widget.
  ScrollController? valueAddedBenefits;
  // State field(s) for WaitingPeriod widget.
  ScrollController? waitingPeriod;
  // State field(s) for ChatBotColumn widget.
  ScrollController? chatBotColumn;
  // State field(s) for Column widget.
  ScrollController? columnController3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (queryURL)] action in TextField widget.
  ApiCallResponse? answerOutput;

  @override
  void initState(BuildContext context) {
    columnController1 = ScrollController();
    benefitsSelection = ScrollController();
    columnController2 = ScrollController();
    listViewController = ScrollController();
    whatsCoveredList = ScrollController();
    whatsNotCovered = ScrollController();
    optionalCovers = ScrollController();
    valueAddedBenefits = ScrollController();
    waitingPeriod = ScrollController();
    chatBotColumn = ScrollController();
    columnController3 = ScrollController();
  }

  @override
  void dispose() {
    columnController1?.dispose();
    benefitsSelection?.dispose();
    columnController2?.dispose();
    listViewController?.dispose();
    whatsCoveredList?.dispose();
    whatsNotCovered?.dispose();
    optionalCovers?.dispose();
    valueAddedBenefits?.dispose();
    waitingPeriod?.dispose();
    chatBotColumn?.dispose();
    columnController3?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
