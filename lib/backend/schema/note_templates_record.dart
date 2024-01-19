import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class NoteTemplatesRecord extends FirestoreRecord {
  NoteTemplatesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "template_title" field.
  String? _templateTitle;
  String get templateTitle => _templateTitle ?? '';
  bool hasTemplateTitle() => _templateTitle != null;

  // "template_description" field.
  String? _templateDescription;
  String get templateDescription => _templateDescription ?? '';
  bool hasTemplateDescription() => _templateDescription != null;

  // "template_commands" field.
  List<String>? _templateCommands;
  List<String> get templateCommands => _templateCommands ?? const [];
  bool hasTemplateCommands() => _templateCommands != null;

  // "template_example" field.
  String? _templateExample;
  String get templateExample => _templateExample ?? '';
  bool hasTemplateExample() => _templateExample != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "session_notes" field.
  List<DocumentReference>? _sessionNotes;
  List<DocumentReference> get sessionNotes => _sessionNotes ?? const [];
  bool hasSessionNotes() => _sessionNotes != null;

  void _initializeFields() {
    _templateTitle = snapshotData['template_title'] as String?;
    _templateDescription = snapshotData['template_description'] as String?;
    _templateCommands = getDataList(snapshotData['template_commands']);
    _templateExample = snapshotData['template_example'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _sessionNotes = getDataList(snapshotData['session_notes']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('note_templates');

  static Stream<NoteTemplatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NoteTemplatesRecord.fromSnapshot(s));

  static Future<NoteTemplatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NoteTemplatesRecord.fromSnapshot(s));

  static NoteTemplatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NoteTemplatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NoteTemplatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NoteTemplatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NoteTemplatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NoteTemplatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNoteTemplatesRecordData({
  String? templateTitle,
  String? templateDescription,
  String? templateExample,
  DateTime? createdTime,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'template_title': templateTitle,
      'template_description': templateDescription,
      'template_example': templateExample,
      'created_time': createdTime,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class NoteTemplatesRecordDocumentEquality
    implements Equality<NoteTemplatesRecord> {
  const NoteTemplatesRecordDocumentEquality();

  @override
  bool equals(NoteTemplatesRecord? e1, NoteTemplatesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.templateTitle == e2?.templateTitle &&
        e1?.templateDescription == e2?.templateDescription &&
        listEquality.equals(e1?.templateCommands, e2?.templateCommands) &&
        e1?.templateExample == e2?.templateExample &&
        e1?.createdTime == e2?.createdTime &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.sessionNotes, e2?.sessionNotes);
  }

  @override
  int hash(NoteTemplatesRecord? e) => const ListEquality().hash([
        e?.templateTitle,
        e?.templateDescription,
        e?.templateCommands,
        e?.templateExample,
        e?.createdTime,
        e?.user,
        e?.sessionNotes
      ]);

  @override
  bool isValidKey(Object? o) => o is NoteTemplatesRecord;
}
