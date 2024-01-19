import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CustomNoteGenerationsRecord extends FirestoreRecord {
  CustomNoteGenerationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "session_note" field.
  DocumentReference? _sessionNote;
  DocumentReference? get sessionNote => _sessionNote;
  bool hasSessionNote() => _sessionNote != null;

  // "note_template" field.
  DocumentReference? _noteTemplate;
  DocumentReference? get noteTemplate => _noteTemplate;
  bool hasNoteTemplate() => _noteTemplate != null;

  // "generated_note" field.
  String? _generatedNote;
  String get generatedNote => _generatedNote ?? '';
  bool hasGeneratedNote() => _generatedNote != null;

  void _initializeFields() {
    _sessionNote = snapshotData['session_note'] as DocumentReference?;
    _noteTemplate = snapshotData['note_template'] as DocumentReference?;
    _generatedNote = snapshotData['generated_note'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('custom_note_generations');

  static Stream<CustomNoteGenerationsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => CustomNoteGenerationsRecord.fromSnapshot(s));

  static Future<CustomNoteGenerationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CustomNoteGenerationsRecord.fromSnapshot(s));

  static CustomNoteGenerationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustomNoteGenerationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustomNoteGenerationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustomNoteGenerationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustomNoteGenerationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustomNoteGenerationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustomNoteGenerationsRecordData({
  DocumentReference? sessionNote,
  DocumentReference? noteTemplate,
  String? generatedNote,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'session_note': sessionNote,
      'note_template': noteTemplate,
      'generated_note': generatedNote,
    }.withoutNulls,
  );

  return firestoreData;
}

class CustomNoteGenerationsRecordDocumentEquality
    implements Equality<CustomNoteGenerationsRecord> {
  const CustomNoteGenerationsRecordDocumentEquality();

  @override
  bool equals(
      CustomNoteGenerationsRecord? e1, CustomNoteGenerationsRecord? e2) {
    return e1?.sessionNote == e2?.sessionNote &&
        e1?.noteTemplate == e2?.noteTemplate &&
        e1?.generatedNote == e2?.generatedNote;
  }

  @override
  int hash(CustomNoteGenerationsRecord? e) => const ListEquality()
      .hash([e?.sessionNote, e?.noteTemplate, e?.generatedNote]);

  @override
  bool isValidKey(Object? o) => o is CustomNoteGenerationsRecord;
}
