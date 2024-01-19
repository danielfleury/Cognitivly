import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PatientDocumentsRecord extends FirestoreRecord {
  PatientDocumentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "therapist" field.
  DocumentReference? _therapist;
  DocumentReference? get therapist => _therapist;
  bool hasTherapist() => _therapist != null;

  // "patient" field.
  DocumentReference? _patient;
  DocumentReference? get patient => _patient;
  bool hasPatient() => _patient != null;

  // "treatment_plan" field.
  String? _treatmentPlan;
  String get treatmentPlan => _treatmentPlan ?? '';
  bool hasTreatmentPlan() => _treatmentPlan != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "date_of_birth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "rolling_insights" field.
  String? _rollingInsights;
  String get rollingInsights => _rollingInsights ?? '';
  bool hasRollingInsights() => _rollingInsights != null;

  // "presenting_concerns" field.
  String? _presentingConcerns;
  String get presentingConcerns => _presentingConcerns ?? '';
  bool hasPresentingConcerns() => _presentingConcerns != null;

  // "DSM5Insights" field.
  String? _dSM5Insights;
  String get dSM5Insights => _dSM5Insights ?? '';
  bool hasDSM5Insights() => _dSM5Insights != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "phone" field.
  int? _phone;
  int get phone => _phone ?? 0;
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "street_address" field.
  String? _streetAddress;
  String get streetAddress => _streetAddress ?? '';
  bool hasStreetAddress() => _streetAddress != null;

  // "consent" field.
  bool? _consent;
  bool get consent => _consent ?? false;
  bool hasConsent() => _consent != null;

  // "additional_notes" field.
  String? _additionalNotes;
  String get additionalNotes => _additionalNotes ?? '';
  bool hasAdditionalNotes() => _additionalNotes != null;

  // "lastupdated" field.
  DateTime? _lastupdated;
  DateTime? get lastupdated => _lastupdated;
  bool hasLastupdated() => _lastupdated != null;

  // "profile_generation" field.
  bool? _profileGeneration;
  bool get profileGeneration => _profileGeneration ?? false;
  bool hasProfileGeneration() => _profileGeneration != null;

  // "profile_generation_time" field.
  DateTime? _profileGenerationTime;
  DateTime? get profileGenerationTime => _profileGenerationTime;
  bool hasProfileGenerationTime() => _profileGenerationTime != null;

  // "raw_rolling_text" field.
  String? _rawRollingText;
  String get rawRollingText => _rawRollingText ?? '';
  bool hasRawRollingText() => _rawRollingText != null;

  // "phq9docs" field.
  int? _phq9docs;
  int get phq9docs => _phq9docs ?? 0;
  bool hasPhq9docs() => _phq9docs != null;

  // "gad7docs" field.
  int? _gad7docs;
  int get gad7docs => _gad7docs ?? 0;
  bool hasGad7docs() => _gad7docs != null;

  // "phq9assessments" field.
  List<DocumentReference>? _phq9assessments;
  List<DocumentReference> get phq9assessments => _phq9assessments ?? const [];
  bool hasPhq9assessments() => _phq9assessments != null;

  // "gad7assessments" field.
  List<DocumentReference>? _gad7assessments;
  List<DocumentReference> get gad7assessments => _gad7assessments ?? const [];
  bool hasGad7assessments() => _gad7assessments != null;

  void _initializeFields() {
    _therapist = snapshotData['therapist'] as DocumentReference?;
    _patient = snapshotData['patient'] as DocumentReference?;
    _treatmentPlan = snapshotData['treatment_plan'] as String?;
    _name = snapshotData['name'] as String?;
    _dateOfBirth = snapshotData['date_of_birth'] as DateTime?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _rollingInsights = snapshotData['rolling_insights'] as String?;
    _presentingConcerns = snapshotData['presenting_concerns'] as String?;
    _dSM5Insights = snapshotData['DSM5Insights'] as String?;
    _gender = snapshotData['gender'] as String?;
    _phone = castToType<int>(snapshotData['phone']);
    _email = snapshotData['email'] as String?;
    _streetAddress = snapshotData['street_address'] as String?;
    _consent = snapshotData['consent'] as bool?;
    _additionalNotes = snapshotData['additional_notes'] as String?;
    _lastupdated = snapshotData['lastupdated'] as DateTime?;
    _profileGeneration = snapshotData['profile_generation'] as bool?;
    _profileGenerationTime =
        snapshotData['profile_generation_time'] as DateTime?;
    _rawRollingText = snapshotData['raw_rolling_text'] as String?;
    _phq9docs = castToType<int>(snapshotData['phq9docs']);
    _gad7docs = castToType<int>(snapshotData['gad7docs']);
    _phq9assessments = getDataList(snapshotData['phq9assessments']);
    _gad7assessments = getDataList(snapshotData['gad7assessments']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('patient_documents');

  static Stream<PatientDocumentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PatientDocumentsRecord.fromSnapshot(s));

  static Future<PatientDocumentsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PatientDocumentsRecord.fromSnapshot(s));

  static PatientDocumentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PatientDocumentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PatientDocumentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PatientDocumentsRecord._(reference, mapFromFirestore(data));

  static PatientDocumentsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      PatientDocumentsRecord.getDocumentFromData(
        {
          'therapist': convertAlgoliaParam(
            snapshot.data['therapist'],
            ParamType.DocumentReference,
            false,
          ),
          'patient': convertAlgoliaParam(
            snapshot.data['patient'],
            ParamType.DocumentReference,
            false,
          ),
          'treatment_plan': snapshot.data['treatment_plan'],
          'name': snapshot.data['name'],
          'date_of_birth': convertAlgoliaParam(
            snapshot.data['date_of_birth'],
            ParamType.DateTime,
            false,
          ),
          'created_time': convertAlgoliaParam(
            snapshot.data['created_time'],
            ParamType.DateTime,
            false,
          ),
          'rolling_insights': snapshot.data['rolling_insights'],
          'presenting_concerns': snapshot.data['presenting_concerns'],
          'DSM5Insights': snapshot.data['DSM5Insights'],
          'gender': snapshot.data['gender'],
          'phone': convertAlgoliaParam(
            snapshot.data['phone'],
            ParamType.int,
            false,
          ),
          'email': snapshot.data['email'],
          'street_address': snapshot.data['street_address'],
          'consent': snapshot.data['consent'],
          'additional_notes': snapshot.data['additional_notes'],
          'lastupdated': convertAlgoliaParam(
            snapshot.data['lastupdated'],
            ParamType.DateTime,
            false,
          ),
          'profile_generation': snapshot.data['profile_generation'],
          'profile_generation_time': convertAlgoliaParam(
            snapshot.data['profile_generation_time'],
            ParamType.DateTime,
            false,
          ),
          'raw_rolling_text': snapshot.data['raw_rolling_text'],
          'phq9docs': convertAlgoliaParam(
            snapshot.data['phq9docs'],
            ParamType.int,
            false,
          ),
          'gad7docs': convertAlgoliaParam(
            snapshot.data['gad7docs'],
            ParamType.int,
            false,
          ),
          'phq9assessments': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['phq9assessments'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'gad7assessments': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['gad7assessments'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
        },
        PatientDocumentsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<PatientDocumentsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'patient_documents',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'PatientDocumentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PatientDocumentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPatientDocumentsRecordData({
  DocumentReference? therapist,
  DocumentReference? patient,
  String? treatmentPlan,
  String? name,
  DateTime? dateOfBirth,
  DateTime? createdTime,
  String? rollingInsights,
  String? presentingConcerns,
  String? dSM5Insights,
  String? gender,
  int? phone,
  String? email,
  String? streetAddress,
  bool? consent,
  String? additionalNotes,
  DateTime? lastupdated,
  bool? profileGeneration,
  DateTime? profileGenerationTime,
  String? rawRollingText,
  int? phq9docs,
  int? gad7docs,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'therapist': therapist,
      'patient': patient,
      'treatment_plan': treatmentPlan,
      'name': name,
      'date_of_birth': dateOfBirth,
      'created_time': createdTime,
      'rolling_insights': rollingInsights,
      'presenting_concerns': presentingConcerns,
      'DSM5Insights': dSM5Insights,
      'gender': gender,
      'phone': phone,
      'email': email,
      'street_address': streetAddress,
      'consent': consent,
      'additional_notes': additionalNotes,
      'lastupdated': lastupdated,
      'profile_generation': profileGeneration,
      'profile_generation_time': profileGenerationTime,
      'raw_rolling_text': rawRollingText,
      'phq9docs': phq9docs,
      'gad7docs': gad7docs,
    }.withoutNulls,
  );

  return firestoreData;
}

class PatientDocumentsRecordDocumentEquality
    implements Equality<PatientDocumentsRecord> {
  const PatientDocumentsRecordDocumentEquality();

  @override
  bool equals(PatientDocumentsRecord? e1, PatientDocumentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.therapist == e2?.therapist &&
        e1?.patient == e2?.patient &&
        e1?.treatmentPlan == e2?.treatmentPlan &&
        e1?.name == e2?.name &&
        e1?.dateOfBirth == e2?.dateOfBirth &&
        e1?.createdTime == e2?.createdTime &&
        e1?.rollingInsights == e2?.rollingInsights &&
        e1?.presentingConcerns == e2?.presentingConcerns &&
        e1?.dSM5Insights == e2?.dSM5Insights &&
        e1?.gender == e2?.gender &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.streetAddress == e2?.streetAddress &&
        e1?.consent == e2?.consent &&
        e1?.additionalNotes == e2?.additionalNotes &&
        e1?.lastupdated == e2?.lastupdated &&
        e1?.profileGeneration == e2?.profileGeneration &&
        e1?.profileGenerationTime == e2?.profileGenerationTime &&
        e1?.rawRollingText == e2?.rawRollingText &&
        e1?.phq9docs == e2?.phq9docs &&
        e1?.gad7docs == e2?.gad7docs &&
        listEquality.equals(e1?.phq9assessments, e2?.phq9assessments) &&
        listEquality.equals(e1?.gad7assessments, e2?.gad7assessments);
  }

  @override
  int hash(PatientDocumentsRecord? e) => const ListEquality().hash([
        e?.therapist,
        e?.patient,
        e?.treatmentPlan,
        e?.name,
        e?.dateOfBirth,
        e?.createdTime,
        e?.rollingInsights,
        e?.presentingConcerns,
        e?.dSM5Insights,
        e?.gender,
        e?.phone,
        e?.email,
        e?.streetAddress,
        e?.consent,
        e?.additionalNotes,
        e?.lastupdated,
        e?.profileGeneration,
        e?.profileGenerationTime,
        e?.rawRollingText,
        e?.phq9docs,
        e?.gad7docs,
        e?.phq9assessments,
        e?.gad7assessments
      ]);

  @override
  bool isValidKey(Object? o) => o is PatientDocumentsRecord;
}
