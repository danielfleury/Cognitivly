import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UsercodesRecord extends FirestoreRecord {
  UsercodesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "accesscode" field.
  String? _accesscode;
  String get accesscode => _accesscode ?? '';
  bool hasAccesscode() => _accesscode != null;

  // "therapist" field.
  DocumentReference? _therapist;
  DocumentReference? get therapist => _therapist;
  bool hasTherapist() => _therapist != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "patient_doc" field.
  DocumentReference? _patientDoc;
  DocumentReference? get patientDoc => _patientDoc;
  bool hasPatientDoc() => _patientDoc != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _accesscode = snapshotData['accesscode'] as String?;
    _therapist = snapshotData['therapist'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _patientDoc = snapshotData['patient_doc'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usercodes');

  static Stream<UsercodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsercodesRecord.fromSnapshot(s));

  static Future<UsercodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsercodesRecord.fromSnapshot(s));

  static UsercodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsercodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsercodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsercodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsercodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsercodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsercodesRecordData({
  String? email,
  String? accesscode,
  DocumentReference? therapist,
  DateTime? date,
  DocumentReference? patientDoc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'accesscode': accesscode,
      'therapist': therapist,
      'date': date,
      'patient_doc': patientDoc,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsercodesRecordDocumentEquality implements Equality<UsercodesRecord> {
  const UsercodesRecordDocumentEquality();

  @override
  bool equals(UsercodesRecord? e1, UsercodesRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.accesscode == e2?.accesscode &&
        e1?.therapist == e2?.therapist &&
        e1?.date == e2?.date &&
        e1?.patientDoc == e2?.patientDoc;
  }

  @override
  int hash(UsercodesRecord? e) => const ListEquality()
      .hash([e?.email, e?.accesscode, e?.therapist, e?.date, e?.patientDoc]);

  @override
  bool isValidKey(Object? o) => o is UsercodesRecord;
}
