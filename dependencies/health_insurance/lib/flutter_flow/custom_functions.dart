import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';

List<dynamic> parsedJsonString(String jsonString) {
  try {
    String cleaned = jsonString.replaceAll(r'\"', '"').replaceAll('\\n', '');
    cleaned = '[$cleaned]';
    final List<dynamic> parsedList = jsonDecode(cleaned);
    return parsedList;
  } catch (e) {
    print('Error parsing JSON: $e');
    return [];
  }
}
