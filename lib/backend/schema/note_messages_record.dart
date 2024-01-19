import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class NoteMessagesRecord extends FirestoreRecord {
  NoteMessagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "session_note" field.
  DocumentReference? _sessionNote;
  DocumentReference? get sessionNote => _sessionNote;
  bool hasSessionNote() => _sessionNote != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "AIResponse" field.
  String? _aIResponse;
  String get aIResponse => _aIResponse ?? '';
  bool hasAIResponse() => _aIResponse != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _sessionNote = snapshotData['session_note'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _aIResponse = snapshotData['AIResponse'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('note_messages');

  static Stream<NoteMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NoteMessagesRecord.fromSnapshot(s));

  static Future<NoteMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NoteMessagesRecord.fromSnapshot(s));

  static NoteMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NoteMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NoteMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NoteMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NoteMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NoteMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNoteMessagesRecordData({
  DocumentReference? sessionNote,
  DocumentReference? user,
  String? message,
  String? aIResponse,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'session_note': sessionNote,
      'user': user,
      'message': message,
      'AIResponse': aIResponse,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class NoteMessagesRecordDocumentEquality
    implements Equality<NoteMessagesRecord> {
  const NoteMessagesRecordDocumentEquality();

  @override
  bool equals(NoteMessagesRecord? e1, NoteMessagesRecord? e2) {
    return e1?.sessionNote == e2?.sessionNote &&
        e1?.user == e2?.user &&
        e1?.message == e2?.message &&
        e1?.aIResponse == e2?.aIResponse &&
        e1?.date == e2?.date;
  }

  @override
  int hash(NoteMessagesRecord? e) => const ListEquality()
      .hash([e?.sessionNote, e?.user, e?.message, e?.aIResponse, e?.date]);

  @override
  bool isValidKey(Object? o) => o is NoteMessagesRecord;
}
