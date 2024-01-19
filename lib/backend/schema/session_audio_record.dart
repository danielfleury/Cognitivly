import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SessionAudioRecord extends FirestoreRecord {
  SessionAudioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  bool hasAudio() => _audio != null;

  // "session_note" field.
  DocumentReference? _sessionNote;
  DocumentReference? get sessionNote => _sessionNote;
  bool hasSessionNote() => _sessionNote != null;

  void _initializeFields() {
    _audio = snapshotData['audio'] as String?;
    _sessionNote = snapshotData['session_note'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('session_audio');

  static Stream<SessionAudioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SessionAudioRecord.fromSnapshot(s));

  static Future<SessionAudioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SessionAudioRecord.fromSnapshot(s));

  static SessionAudioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SessionAudioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SessionAudioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SessionAudioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SessionAudioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SessionAudioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSessionAudioRecordData({
  String? audio,
  DocumentReference? sessionNote,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'audio': audio,
      'session_note': sessionNote,
    }.withoutNulls,
  );

  return firestoreData;
}

class SessionAudioRecordDocumentEquality
    implements Equality<SessionAudioRecord> {
  const SessionAudioRecordDocumentEquality();

  @override
  bool equals(SessionAudioRecord? e1, SessionAudioRecord? e2) {
    return e1?.audio == e2?.audio && e1?.sessionNote == e2?.sessionNote;
  }

  @override
  int hash(SessionAudioRecord? e) =>
      const ListEquality().hash([e?.audio, e?.sessionNote]);

  @override
  bool isValidKey(Object? o) => o is SessionAudioRecord;
}
