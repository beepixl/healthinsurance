import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';

import 'package:ff_commons/api_requests/api_paging_params.dart';

export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class UploadFileCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? file,
    String? custID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadFile',
      apiUrl:
          'https://abc-uat-doc-comparison-dkbpgggbcyewcqfs.centralindia-01.azurewebsites.net/extract-text/',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
      },
      params: {
        'file': file,
        'cust_ID': custID,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryURLCall {
  static Future<ApiCallResponse> call({
    String? sessionId = '',
    String? query = '',
    bool? isChat,
    String? custID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "query": "${escapeStringForJson(query)}",
  "session_id": "${escapeStringForJson(sessionId)}",
  "ischat": ${isChat},
  "cust_ID": "${escapeStringForJson(custID)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'queryURL',
      apiUrl:
          'https://abc-uat-doc-comparison-dkbpgggbcyewcqfs.centralindia-01.azurewebsites.net/doc_comp',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PlanDifferencesCall {
  static Future<ApiCallResponse> call({
    String? sessionId = '',
    String? query = '',
    String? custID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "query": "${escapeStringForJson(query)}",
  "session_id": "${escapeStringForJson(sessionId)}",
  "ischat": <isChat>,
  "cust_ID": "${escapeStringForJson(custID)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'planDifferences',
      apiUrl:
          'https://abc-uat-doc-comparison-dkbpgggbcyewcqfs.centralindia-01.azurewebsites.net/plan_differences',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? features(dynamic response) => (getJsonField(
        response,
        r'''$[:].feature''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? selectedPlan(dynamic response) => (getJsonField(
        response,
        r'''$[:].selected_plan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ourPlan(dynamic response) => (getJsonField(
        response,
        r'''$[:].our_plan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? betterCoverage(dynamic response) => (getJsonField(
        response,
        r'''$[:].better_coverage''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class FetchPlansCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'fetchPlans',
      apiUrl:
          'https://abcduat1.abcscuat.com/abc-healthinsurance/api/v5/fetch/plans',
      callType: ApiCallType.GET,
      headers: {
        'source': 'abcd_health_insurance',
        'secret': '2025040220250318',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GenerateTokenCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'generateToken',
      apiUrl:
          'https://abcduat1.abcscuat.com/abc-login/adityabirla/api/v1/login/generatetoken?mobileNumber=9800098000&key=AIzaSyDzSHLbM-5XATiIIyGiCNW8WhzkG4oEZpk',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.idToken''',
      ));
  static String? refreshToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.refreshToken''',
      ));
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
