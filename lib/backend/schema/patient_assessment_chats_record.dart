import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PatientAssessmentChatsRecord extends FirestoreRecord {
  PatientAssessmentChatsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "patient_message" field.
  String? _patientMessage;
  String get patientMessage => _patientMessage ?? '';
  bool hasPatientMessage() => _patientMessage != null;

  // "ai_response" field.
  String? _aiResponse;
  String get aiResponse => _aiResponse ?? '';
  bool hasAiResponse() => _aiResponse != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "patient_assessment" field.
  DocumentReference? _patientAssessment;
  DocumentReference? get patientAssessment => _patientAssessment;
  bool hasPatientAssessment() => _patientAssessment != null;

  // "running_chats" field.
  String? _runningChats;
  String get runningChats => _runningChats ?? '';
  bool hasRunningChats() => _runningChats != null;

  // "visible" field.
  bool? _visible;
  bool get visible => _visible ?? false;
  bool hasVisible() => _visible != null;

  // "patient" field.
  DocumentReference? _patient;
  DocumentReference? get patient => _patient;
  bool hasPatient() => _patient != null;

  void _initializeFields() {
    _patientMessage = snapshotData['patient_message'] as String?;
    _aiResponse = snapshotData['ai_response'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _patientAssessment =
        snapshotData['patient_assessment'] as DocumentReference?;
    _runningChats = snapshotData['running_chats'] as String?;
    _visible = snapshotData['visible'] as bool?;
    _patient = snapshotData['patient'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('patient_assessment_chats');

  static Stream<PatientAssessmentChatsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => PatientAssessmentChatsRecord.fromSnapshot(s));

  static Future<PatientAssessmentChatsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PatientAssessmentChatsRecord.fromSnapshot(s));

  static PatientAssessmentChatsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PatientAssessmentChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PatientAssessmentChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PatientAssessmentChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PatientAssessmentChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PatientAssessmentChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPatientAssessmentChatsRecordData({
  String? patientMessage,
  String? aiResponse,
  DateTime? date,
  DocumentReference? patientAssessment,
  String? runningChats,
  bool? visible,
  DocumentReference? patient,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'patient_message': patientMessage,
      'ai_response': aiResponse,
      'date': date,
      'patient_assessment': patientAssessment,
      'running_chats': runningChats,
      'visible': visible,
      'patient': patient,
    }.withoutNulls,
  );

  return firestoreData;
}

class PatientAssessmentChatsRecordDocumentEquality
    implements Equality<PatientAssessmentChatsRecord> {
  const PatientAssessmentChatsRecordDocumentEquality();

  @override
  bool equals(
      PatientAssessmentChatsRecord? e1, PatientAssessmentChatsRecord? e2) {
    return e1?.patientMessage == e2?.patientMessage &&
        e1?.aiResponse == e2?.aiResponse &&
        e1?.date == e2?.date &&
        e1?.patientAssessment == e2?.patientAssessment &&
        e1?.runningChats == e2?.runningChats &&
        e1?.visible == e2?.visible &&
        e1?.patient == e2?.patient;
  }

  @override
  int hash(PatientAssessmentChatsRecord? e) => const ListEquality().hash([
        e?.patientMessage,
        e?.aiResponse,
        e?.date,
        e?.patientAssessment,
        e?.runningChats,
        e?.visible,
        e?.patient
      ]);

  @override
  bool isValidKey(Object? o) => o is PatientAssessmentChatsRecord;
}
