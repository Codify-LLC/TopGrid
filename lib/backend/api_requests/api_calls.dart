import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Send In Blue Group Code

class SendInBlueGroup {
  static String baseUrl = 'https://api.sendinblue.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'api-key':
        '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',
  };
  static SendATransactionalEmailCall sendATransactionalEmailCall =
      SendATransactionalEmailCall();
  static GetTheListOfEmailTemplatesCall getTheListOfEmailTemplatesCall =
      GetTheListOfEmailTemplatesCall();
}

class SendATransactionalEmailCall {
  Future<ApiCallResponse> call({
    String? senderName = 'Topgrid',
    String? senderEmail = 'samarth.cs@thetopgrid.com',
    String? recieverEmail = 'samarth.cs@thetopgrid.com',
    String? recieverName = 'Unknown',
    String? subject = 'Welcome to Topgrid',
    int? templateId = 2,
  }) {
    final body = '''
{
  "sender": {
    "name": "${senderName}",
    "email": "${senderEmail}"
  },
  "to": [
    {
      "email": "${recieverEmail}",
      "name": "${recieverName}"
    }
  ],
  "subject": "${subject}",
  "templateId": ${templateId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send a transactional email',
      apiUrl: '${SendInBlueGroup.baseUrl}/v3/smtp/email',
      callType: ApiCallType.POST,
      headers: {
        ...SendInBlueGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetTheListOfEmailTemplatesCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get the list of email templates',
      apiUrl: '${SendInBlueGroup.baseUrl}/v3/smtp/templates',
      callType: ApiCallType.GET,
      headers: {
        ...SendInBlueGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Send In Blue Group Code

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
