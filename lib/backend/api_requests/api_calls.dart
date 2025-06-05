import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Gemini Group Code

class GeminiGroup {
  static String getBaseUrl({
    String? response = '',
  }) =>
      'https://generativelanguage.googleapis.com/v1beta';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer AIzaSyDEGt9BFxthTChTxeudH-GvDBO7nncWVsU',
  };
  static SendFullPromptCall sendFullPromptCall = SendFullPromptCall();
  static AddImageRecordCall addImageRecordCall = AddImageRecordCall();
}

class SendFullPromptCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    dynamic? promptJson,
    String? response = '',
  }) async {
    final baseUrl = GeminiGroup.getBaseUrl(
      response: response,
    );

    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gemini-1.5-flash",
  "messages": ${prompt}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer AIzaSyDEGt9BFxthTChTxeudH-GvDBO7nncWVsU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? createdTimestamp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.role''',
      ));
  String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class AddImageRecordCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? photo,
    String? prompt =
        'Generate a simplified layman friendly version of this report that is easy to understand',
    String? response = '',
  }) async {
    final baseUrl = GeminiGroup.getBaseUrl(
      response: response,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add image record',
      apiUrl:
          '${baseUrl}Authorization: Bearer AIzaSyBWwfNQDBZcHxw-LrXrazOagGS6XiIiYWg',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer AIzaSyDEGt9BFxthTChTxeudH-GvDBO7nncWVsU',
      },
      params: {
        'photo': photo,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Gemini Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
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
