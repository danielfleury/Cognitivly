import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Phq9Record extends FirestoreRecord {
  Phq9Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "q1" field.
  double? _q1;
  double get q1 => _q1 ?? 0.0;
  bool hasQ1() => _q1 != null;

  // "q2" field.
  double? _q2;
  double get q2 => _q2 ?? 0.0;
  bool hasQ2() => _q2 != null;

  // "q3" field.
  double? _q3;
  double get q3 => _q3 ?? 0.0;
  bool hasQ3() => _q3 != null;

  // "q4" field.
  double? _q4;
  double get q4 => _q4 ?? 0.0;
  bool hasQ4() => _q4 != null;

  // "q5" field.
  double? _q5;
  double get q5 => _q5 ?? 0.0;
  bool hasQ5() => _q5 != null;

  // "q6" field.
  double? _q6;
  double get q6 => _q6 ?? 0.0;
  bool hasQ6() => _q6 != null;

  // "q7" field.
  double? _q7;
  double get q7 => _q7 ?? 0.0;
  bool hasQ7() => _q7 != null;

  // "q8" field.
  double? _q8;
  double get q8 => _q8 ?? 0.0;
  bool hasQ8() => _q8 != null;

  // "q9" field.
  double? _q9;
  double get q9 => _q9 ?? 0.0;
  bool hasQ9() => _q9 != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "interpretation" field.
  String? _interpretation;
  String get interpretation => _interpretation ?? '';
  bool hasInterpretation() => _interpretation != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "patientdoc" field.
  DocumentReference? _patientdoc;
  DocumentReference? get patientdoc => _patientdoc;
  bool hasPatientdoc() => _patientdoc != null;

  // "therapist" field.
  DocumentReference? _therapist;
  DocumentReference? get therapist => _therapist;
  bool hasTherapist() => _therapist != null;

  // "day" field.
  int? _day;
  int get day => _day ?? 0;
  bool hasDay() => _day != null;

  // "complete" field.
  bool? _complete;
  bool get complete => _complete ?? false;
  bool hasComplete() => _complete != null;

  void _initializeFields() {
    _q1 = castToType<double>(snapshotData['q1']);
    _q2 = castToType<double>(snapshotData['q2']);
    _q3 = castToType<double>(snapshotData['q3']);
    _q4 = castToType<double>(snapshotData['q4']);
    _q5 = castToType<double>(snapshotData['q5']);
    _q6 = castToType<double>(snapshotData['q6']);
    _q7 = castToType<double>(snapshotData['q7']);
    _q8 = castToType<double>(snapshotData['q8']);
    _q9 = castToType<double>(snapshotData['q9']);
    _total = castToType<double>(snapshotData['total']);
    _interpretation = snapshotData['interpretation'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _patientdoc = snapshotData['patientdoc'] as DocumentReference?;
    _therapist = snapshotData['therapist'] as DocumentReference?;
    _day = castToType<int>(snapshotData['day']);
    _complete = snapshotData['complete'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('phq9');

  static Stream<Phq9Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Phq9Record.fromSnapshot(s));

  static Future<Phq9Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Phq9Record.fromSnapshot(s));

  static Phq9Record fromSnapshot(DocumentSnapshot snapshot) => Phq9Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Phq9Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Phq9Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Phq9Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Phq9Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPhq9RecordData({
  double? q1,
  double? q2,
  double? q3,
  double? q4,
  double? q5,
  double? q6,
  double? q7,
  double? q8,
  double? q9,
  double? total,
  String? interpretation,
  DateTime? date,
  DocumentReference? patientdoc,
  DocumentReference? therapist,
  int? day,
  bool? complete,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'q1': q1,
      'q2': q2,
      'q3': q3,
      'q4': q4,
      'q5': q5,
      'q6': q6,
      'q7': q7,
      'q8': q8,
      'q9': q9,
      'total': total,
      'interpretation': interpretation,
      'date': date,
      'patientdoc': patientdoc,
      'therapist': therapist,
      'day': day,
      'complete': complete,
    }.withoutNulls,
  );

  return firestoreData;
}

class Phq9RecordDocumentEquality implements Equality<Phq9Record> {
  const Phq9RecordDocumentEquality();

  @override
  bool equals(Phq9Record? e1, Phq9Record? e2) {
    return e1?.q1 == e2?.q1 &&
        e1?.q2 == e2?.q2 &&
        e1?.q3 == e2?.q3 &&
        e1?.q4 == e2?.q4 &&
        e1?.q5 == e2?.q5 &&
        e1?.q6 == e2?.q6 &&
        e1?.q7 == e2?.q7 &&
        e1?.q8 == e2?.q8 &&
        e1?.q9 == e2?.q9 &&
        e1?.total == e2?.total &&
        e1?.interpretation == e2?.interpretation &&
        e1?.date == e2?.date &&
        e1?.patientdoc == e2?.patientdoc &&
        e1?.therapist == e2?.therapist &&
        e1?.day == e2?.day &&
        e1?.complete == e2?.complete;
  }

  @override
  int hash(Phq9Record? e) => const ListEquality().hash([
        e?.q1,
        e?.q2,
        e?.q3,
        e?.q4,
        e?.q5,
        e?.q6,
        e?.q7,
        e?.q8,
        e?.q9,
        e?.total,
        e?.interpretation,
        e?.date,
        e?.patientdoc,
        e?.therapist,
        e?.day,
        e?.complete
      ]);

  @override
  bool isValidKey(Object? o) => o is Phq9Record;
}
