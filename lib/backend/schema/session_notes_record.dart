import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SessionNotesRecord extends FirestoreRecord {
  SessionNotesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "raw_note" field.
  String? _rawNote;
  String get rawNote => _rawNote ?? '';
  bool hasRawNote() => _rawNote != null;

  // "ai_summary" field.
  String? _aiSummary;
  String get aiSummary => _aiSummary ?? '';
  bool hasAiSummary() => _aiSummary != null;

  // "ai_diagnostics" field.
  String? _aiDiagnostics;
  String get aiDiagnostics => _aiDiagnostics ?? '';
  bool hasAiDiagnostics() => _aiDiagnostics != null;

  // "aI_treatments" field.
  String? _aITreatments;
  String get aITreatments => _aITreatments ?? '';
  bool hasAITreatments() => _aITreatments != null;

  // "processed" field.
  bool? _processed;
  bool get processed => _processed ?? false;
  bool hasProcessed() => _processed != null;

  // "raw_note_title" field.
  String? _rawNoteTitle;
  String get rawNoteTitle => _rawNoteTitle ?? '';
  bool hasRawNoteTitle() => _rawNoteTitle != null;

  // "ai_note_title" field.
  String? _aiNoteTitle;
  String get aiNoteTitle => _aiNoteTitle ?? '';
  bool hasAiNoteTitle() => _aiNoteTitle != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "ai_soap_note" field.
  String? _aiSoapNote;
  String get aiSoapNote => _aiSoapNote ?? '';
  bool hasAiSoapNote() => _aiSoapNote != null;

  // "ai_birp_note" field.
  String? _aiBirpNote;
  String get aiBirpNote => _aiBirpNote ?? '';
  bool hasAiBirpNote() => _aiBirpNote != null;

  // "ai_psychotherapy_note" field.
  String? _aiPsychotherapyNote;
  String get aiPsychotherapyNote => _aiPsychotherapyNote ?? '';
  bool hasAiPsychotherapyNote() => _aiPsychotherapyNote != null;

  // "audio_saved" field.
  bool? _audioSaved;
  bool get audioSaved => _audioSaved ?? false;
  bool hasAudioSaved() => _audioSaved != null;

  // "highlight" field.
  List<String>? _highlight;
  List<String> get highlight => _highlight ?? const [];
  bool hasHighlight() => _highlight != null;

  // "patient" field.
  DocumentReference? _patient;
  DocumentReference? get patient => _patient;
  bool hasPatient() => _patient != null;

  // "audio_transcription" field.
  String? _audioTranscription;
  String get audioTranscription => _audioTranscription ?? '';
  bool hasAudioTranscription() => _audioTranscription != null;

  // "transcribed" field.
  bool? _transcribed;
  bool get transcribed => _transcribed ?? false;
  bool hasTranscribed() => _transcribed != null;

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  bool hasAudio() => _audio != null;

  // "general_feedback" field.
  String? _generalFeedback;
  String get generalFeedback => _generalFeedback ?? '';
  bool hasGeneralFeedback() => _generalFeedback != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "patient_document" field.
  DocumentReference? _patientDocument;
  DocumentReference? get patientDocument => _patientDocument;
  bool hasPatientDocument() => _patientDocument != null;

  // "redacted_note" field.
  String? _redactedNote;
  String get redactedNote => _redactedNote ?? '';
  bool hasRedactedNote() => _redactedNote != null;

  // "note_template" field.
  List<DocumentReference>? _noteTemplate;
  List<DocumentReference> get noteTemplate => _noteTemplate ?? const [];
  bool hasNoteTemplate() => _noteTemplate != null;

  // "treatment_plan" field.
  String? _treatmentPlan;
  String get treatmentPlan => _treatmentPlan ?? '';
  bool hasTreatmentPlan() => _treatmentPlan != null;

  // "compliant_treatment_plan" field.
  String? _compliantTreatmentPlan;
  String get compliantTreatmentPlan => _compliantTreatmentPlan ?? '';
  bool hasCompliantTreatmentPlan() => _compliantTreatmentPlan != null;

  // "note_rating" field.
  double? _noteRating;
  double get noteRating => _noteRating ?? 0.0;
  bool hasNoteRating() => _noteRating != null;

  // "feedback" field.
  List<String>? _feedback;
  List<String> get feedback => _feedback ?? const [];
  bool hasFeedback() => _feedback != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _rawNote = snapshotData['raw_note'] as String?;
    _aiSummary = snapshotData['ai_summary'] as String?;
    _aiDiagnostics = snapshotData['ai_diagnostics'] as String?;
    _aITreatments = snapshotData['aI_treatments'] as String?;
    _processed = snapshotData['processed'] as bool?;
    _rawNoteTitle = snapshotData['raw_note_title'] as String?;
    _aiNoteTitle = snapshotData['ai_note_title'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _aiSoapNote = snapshotData['ai_soap_note'] as String?;
    _aiBirpNote = snapshotData['ai_birp_note'] as String?;
    _aiPsychotherapyNote = snapshotData['ai_psychotherapy_note'] as String?;
    _audioSaved = snapshotData['audio_saved'] as bool?;
    _highlight = getDataList(snapshotData['highlight']);
    _patient = snapshotData['patient'] as DocumentReference?;
    _audioTranscription = snapshotData['audio_transcription'] as String?;
    _transcribed = snapshotData['transcribed'] as bool?;
    _audio = snapshotData['audio'] as String?;
    _generalFeedback = snapshotData['general_feedback'] as String?;
    _createdDate = snapshotData['created_date'] as DateTime?;
    _patientDocument = snapshotData['patient_document'] as DocumentReference?;
    _redactedNote = snapshotData['redacted_note'] as String?;
    _noteTemplate = getDataList(snapshotData['note_template']);
    _treatmentPlan = snapshotData['treatment_plan'] as String?;
    _compliantTreatmentPlan =
        snapshotData['compliant_treatment_plan'] as String?;
    _noteRating = castToType<double>(snapshotData['note_rating']);
    _feedback = getDataList(snapshotData['feedback']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('session_notes');

  static Stream<SessionNotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SessionNotesRecord.fromSnapshot(s));

  static Future<SessionNotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SessionNotesRecord.fromSnapshot(s));

  static SessionNotesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SessionNotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SessionNotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SessionNotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SessionNotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SessionNotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSessionNotesRecordData({
  DocumentReference? user,
  String? rawNote,
  String? aiSummary,
  String? aiDiagnostics,
  String? aITreatments,
  bool? processed,
  String? rawNoteTitle,
  String? aiNoteTitle,
  DateTime? createdTime,
  String? aiSoapNote,
  String? aiBirpNote,
  String? aiPsychotherapyNote,
  bool? audioSaved,
  DocumentReference? patient,
  String? audioTranscription,
  bool? transcribed,
  String? audio,
  String? generalFeedback,
  DateTime? createdDate,
  DocumentReference? patientDocument,
  String? redactedNote,
  String? treatmentPlan,
  String? compliantTreatmentPlan,
  double? noteRating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'raw_note': rawNote,
      'ai_summary': aiSummary,
      'ai_diagnostics': aiDiagnostics,
      'aI_treatments': aITreatments,
      'processed': processed,
      'raw_note_title': rawNoteTitle,
      'ai_note_title': aiNoteTitle,
      'created_time': createdTime,
      'ai_soap_note': aiSoapNote,
      'ai_birp_note': aiBirpNote,
      'ai_psychotherapy_note': aiPsychotherapyNote,
      'audio_saved': audioSaved,
      'patient': patient,
      'audio_transcription': audioTranscription,
      'transcribed': transcribed,
      'audio': audio,
      'general_feedback': generalFeedback,
      'created_date': createdDate,
      'patient_document': patientDocument,
      'redacted_note': redactedNote,
      'treatment_plan': treatmentPlan,
      'compliant_treatment_plan': compliantTreatmentPlan,
      'note_rating': noteRating,
    }.withoutNulls,
  );

  return firestoreData;
}

class SessionNotesRecordDocumentEquality
    implements Equality<SessionNotesRecord> {
  const SessionNotesRecordDocumentEquality();

  @override
  bool equals(SessionNotesRecord? e1, SessionNotesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.user == e2?.user &&
        e1?.rawNote == e2?.rawNote &&
        e1?.aiSummary == e2?.aiSummary &&
        e1?.aiDiagnostics == e2?.aiDiagnostics &&
        e1?.aITreatments == e2?.aITreatments &&
        e1?.processed == e2?.processed &&
        e1?.rawNoteTitle == e2?.rawNoteTitle &&
        e1?.aiNoteTitle == e2?.aiNoteTitle &&
        e1?.createdTime == e2?.createdTime &&
        e1?.aiSoapNote == e2?.aiSoapNote &&
        e1?.aiBirpNote == e2?.aiBirpNote &&
        e1?.aiPsychotherapyNote == e2?.aiPsychotherapyNote &&
        e1?.audioSaved == e2?.audioSaved &&
        listEquality.equals(e1?.highlight, e2?.highlight) &&
        e1?.patient == e2?.patient &&
        e1?.audioTranscription == e2?.audioTranscription &&
        e1?.transcribed == e2?.transcribed &&
        e1?.audio == e2?.audio &&
        e1?.generalFeedback == e2?.generalFeedback &&
        e1?.createdDate == e2?.createdDate &&
        e1?.patientDocument == e2?.patientDocument &&
        e1?.redactedNote == e2?.redactedNote &&
        listEquality.equals(e1?.noteTemplate, e2?.noteTemplate) &&
        e1?.treatmentPlan == e2?.treatmentPlan &&
        e1?.compliantTreatmentPlan == e2?.compliantTreatmentPlan &&
        e1?.noteRating == e2?.noteRating &&
        listEquality.equals(e1?.feedback, e2?.feedback);
  }

  @override
  int hash(SessionNotesRecord? e) => const ListEquality().hash([
        e?.user,
        e?.rawNote,
        e?.aiSummary,
        e?.aiDiagnostics,
        e?.aITreatments,
        e?.processed,
        e?.rawNoteTitle,
        e?.aiNoteTitle,
        e?.createdTime,
        e?.aiSoapNote,
        e?.aiBirpNote,
        e?.aiPsychotherapyNote,
        e?.audioSaved,
        e?.highlight,
        e?.patient,
        e?.audioTranscription,
        e?.transcribed,
        e?.audio,
        e?.generalFeedback,
        e?.createdDate,
        e?.patientDocument,
        e?.redactedNote,
        e?.noteTemplate,
        e?.treatmentPlan,
        e?.compliantTreatmentPlan,
        e?.noteRating,
        e?.feedback
      ]);

  @override
  bool isValidKey(Object? o) => o is SessionNotesRecord;
}
