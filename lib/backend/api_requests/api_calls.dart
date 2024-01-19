import 'dart:convert';
import '../cloud_functions/cloud_functions.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class NotesSummaryCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? model = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'NotesSummaryCall',
        'variables': {
          'therapynote': therapynote,
          'model': model,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? notessummary(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class CompliantTreatmentPlanCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? model = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CompliantTreatmentPlanCall',
        'variables': {
          'therapynote': therapynote,
          'model': model,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? compliantplan(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class SOAPNoteRegenerationCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? feedback = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'SOAPNoteRegenerationCall',
        'variables': {
          'therapynote': therapynote,
          'feedback': feedback,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? regeneratedsoapnote(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class TreatmentPlanRegenerationCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? feedback = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'TreatmentPlanRegenerationCall',
        'variables': {
          'therapynote': therapynote,
          'feedback': feedback,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? regeneratedsoapnote(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class BIRPNoteRegenerationCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? feedback = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'BIRPNoteRegenerationCall',
        'variables': {
          'therapynote': therapynote,
          'feedback': feedback,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? regeneratedbirpnote(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class PsychotherapyNoteRegenerationCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? feedback = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'PsychotherapyNoteRegenerationCall',
        'variables': {
          'therapynote': therapynote,
          'feedback': feedback,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? regeneratedpsychotherapynote(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class AssessmentAgentCall {
  static Future<ApiCallResponse> call({
    String? usermessage = '',
    String? conversationhistory = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AssessmentAgentCall',
        'variables': {
          'usermessage': usermessage,
          'conversationhistory': conversationhistory,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? intakeagentout(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class NoteDialogueCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? message = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'NoteDialogueCall',
        'variables': {
          'therapynote': therapynote,
          'message': message,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? response(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class LastThreeSessionSummaryCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'LastThreeSessionSummaryCall',
        'variables': {
          'therapynote': therapynote,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? cummulativeinsights(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class TopPresentingConcernsCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'TopPresentingConcernsCall',
        'variables': {
          'therapynote': therapynote,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? cummulativeinsights(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class PsychotherapyNoteCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? modalities = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'PsychotherapyNoteCall',
        'variables': {
          'therapynote': therapynote,
          'modalities': modalities,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? psychotherapynote(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class CustomNoteGenerationCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? description = '',
    String? example = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CustomNoteGenerationCall',
        'variables': {
          'therapynote': therapynote,
          'description': description,
          'example': example,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? psychotherapynote(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class SOAPNoteCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? modalities = '',
    String? stylepreference = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'SOAPNoteCall',
        'variables': {
          'therapynote': therapynote,
          'modalities': modalities,
          'stylepreference': stylepreference,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? soapnote(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class TreatmentPlanCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? example = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'TreatmentPlanCall',
        'variables': {
          'therapynote': therapynote,
          'example': example,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? treatmentplan(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class SOAPNotePALMCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'SOAPNotePALMCall',
        'variables': {
          'therapynote': therapynote,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic soapnote(dynamic response) => getJsonField(
        response,
        r'''$.candidates[:].output''',
      );
}

class BIRPNoteCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? modalities = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'BIRPNoteCall',
        'variables': {
          'therapynote': therapynote,
          'modalities': modalities,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? birpnote(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.parts[:].text''',
      ));
}

class BIRPNoteGeminiCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'BIRPNoteGeminiCall',
        'variables': {
          'therapynote': therapynote,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? birpnote(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class NoteHypothesesCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
    String? model = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'NoteHypothesesCall',
        'variables': {
          'therapynote': therapynote,
          'model': model,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic noteshypotheses(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
}

class CummulativeDSMCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CummulativeDSMCall',
        'variables': {
          'therapynote': therapynote,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic noteshypotheses(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
}

class NotesTitleCall {
  static Future<ApiCallResponse> call({
    String? therapynote = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'NotesTitleCall',
        'variables': {
          'therapynote': therapynote,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic notestitle(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
}

class IntakeTopInsightsCall {
  static Future<ApiCallResponse> call({
    String? rawintake = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'IntakeTopInsightsCall',
        'variables': {
          'rawintake': rawintake,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? notestitle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class IntakeClinicalQuestionsCall {
  static Future<ApiCallResponse> call({
    String? rawintake = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'IntakeClinicalQuestionsCall',
        'variables': {
          'rawintake': rawintake,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? clinicaquestions(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class IntakeClinicalDiagnosticsCall {
  static Future<ApiCallResponse> call({
    String? rawintake = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'IntakeClinicalDiagnosticsCall',
        'variables': {
          'rawintake': rawintake,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? clinicaldiagnostics(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class IntakeFamilyDynamicsCall {
  static Future<ApiCallResponse> call({
    String? rawintake = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'IntakeFamilyDynamicsCall',
        'variables': {
          'rawintake': rawintake,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? familydynamics(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class IntakeNextStepsCall {
  static Future<ApiCallResponse> call({
    String? rawintake = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'IntakeNextStepsCall',
        'variables': {
          'rawintake': rawintake,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? notestitle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class GeneratePlanCall {
  static Future<ApiCallResponse> call({
    String? rawintake = '',
    String? therapynote = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GeneratePlanCall',
        'variables': {
          'rawintake': rawintake,
          'therapynote': therapynote,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? notestitle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class TranscribeAudioCall {
  static Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'TranscribeAudioCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? notestitle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class SecurityEmailsCall {
  static Future<ApiCallResponse> call({
    String? subject = '',
    String? emailBody = '',
    String? recipient = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'SecurityEmailsCall',
        'variables': {
          'subject': subject,
          'emailBody': emailBody,
          'recipient': recipient,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class PangeaRedactCall {
  static Future<ApiCallResponse> call({
    String? rawText = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'PangeaRedactCall',
        'variables': {
          'rawText': rawText,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic redactionresult(dynamic response) => getJsonField(
        response,
        r'''$.result.redacted_text''',
      );
}

class StripePaymentLinkGenerationCall {
  static Future<ApiCallResponse> call({
    String? orderId = '',
    String? subscriptionType = '',
    String? pricingId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'StripePaymentLinkGenerationCall',
        'variables': {
          'orderId': orderId,
          'subscriptionType': subscriptionType,
          'pricingId': pricingId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? paymentlink(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class StripeCancelSubscriptionCall {
  static Future<ApiCallResponse> call({
    String? subscriptionId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'StripeCancelSubscriptionCall',
        'variables': {
          'subscriptionId': subscriptionId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
