import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PatientAssessmentsRecord extends FirestoreRecord {
  PatientAssessmentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "patient_document" field.
  DocumentReference? _patientDocument;
  DocumentReference? get patientDocument => _patientDocument;
  bool hasPatientDocument() => _patientDocument != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  bool hasSummary() => _summary != null;

  // "progress_note" field.
  String? _progressNote;
  String get progressNote => _progressNote ?? '';
  bool hasProgressNote() => _progressNote != null;

  // "running_chats" field.
  String? _runningChats;
  String get runningChats => _runningChats ?? '';
  bool hasRunningChats() => _runningChats != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "patient" field.
  DocumentReference? _patient;
  DocumentReference? get patient => _patient;
  bool hasPatient() => _patient != null;

  // "day" field.
  int? _day;
  int get day => _day ?? 0;
  bool hasDay() => _day != null;

  // "gad7doc" field.
  DocumentReference? _gad7doc;
  DocumentReference? get gad7doc => _gad7doc;
  bool hasGad7doc() => _gad7doc != null;

  // "phq9doc" field.
  DocumentReference? _phq9doc;
  DocumentReference? get phq9doc => _phq9doc;
  bool hasPhq9doc() => _phq9doc != null;

  void _initializeFields() {
    _patientDocument = snapshotData['patient_document'] as DocumentReference?;
    _summary = snapshotData['summary'] as String?;
    _progressNote = snapshotData['progress_note'] as String?;
    _runningChats = snapshotData['running_chats'] as String?;
    _type = snapshotData['type'] as String?;
    _completed = snapshotData['completed'] as bool?;
    _description = snapshotData['description'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _patient = snapshotData['patient'] as DocumentReference?;
    _day = castToType<int>(snapshotData['day']);
    _gad7doc = snapshotData['gad7doc'] as DocumentReference?;
    _phq9doc = snapshotData['phq9doc'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('patient_assessments');

  static Stream<PatientAssessmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PatientAssessmentsRecord.fromSnapshot(s));

  static Future<PatientAssessmentsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PatientAssessmentsRecord.fromSnapshot(s));

  static PatientAssessmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PatientAssessmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PatientAssessmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PatientAssessmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PatientAssessmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PatientAssessmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPatientAssessmentsRecordData({
  DocumentReference? patientDocument,
  String? summary,
  String? progressNote,
  String? runningChats,
  String? type,
  bool? completed,
  String? description,
  DateTime? date,
  DocumentReference? patient,
  int? day,
  DocumentReference? gad7doc,
  DocumentReference? phq9doc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'patient_document': patientDocument,
      'summary': summary,
      'progress_note': progressNote,
      'running_chats': runningChats,
      'type': type,
      'completed': completed,
      'description': description,
      'date': date,
      'patient': patient,
      'day': day,
      'gad7doc': gad7doc,
      'phq9doc': phq9doc,
    }.withoutNulls,
  );

  return firestoreData;
}

class PatientAssessmentsRecordDocumentEquality
    implements Equality<PatientAssessmentsRecord> {
  const PatientAssessmentsRecordDocumentEquality();

  @override
  bool equals(PatientAssessmentsRecord? e1, PatientAssessmentsRecord? e2) {
    return e1?.patientDocument == e2?.patientDocument &&
        e1?.summary == e2?.summary &&
        e1?.progressNote == e2?.progressNote &&
        e1?.runningChats == e2?.runningChats &&
        e1?.type == e2?.type &&
        e1?.completed == e2?.completed &&
        e1?.description == e2?.description &&
        e1?.date == e2?.date &&
        e1?.patient == e2?.patient &&
        e1?.day == e2?.day &&
        e1?.gad7doc == e2?.gad7doc &&
        e1?.phq9doc == e2?.phq9doc;
  }

  @override
  int hash(PatientAssessmentsRecord? e) => const ListEquality().hash([
        e?.patientDocument,
        e?.summary,
        e?.progressNote,
        e?.runningChats,
        e?.type,
        e?.completed,
        e?.description,
        e?.date,
        e?.patient,
        e?.day,
        e?.gad7doc,
        e?.phq9doc
      ]);

  @override
  bool isValidKey(Object? o) => o is PatientAssessmentsRecord;
}
