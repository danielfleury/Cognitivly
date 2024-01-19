import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "patient" field.
  bool? _patient;
  bool get patient => _patient ?? false;
  bool hasPatient() => _patient != null;

  // "InvitedList" field.
  List<String>? _invitedList;
  List<String> get invitedList => _invitedList ?? const [];
  bool hasInvitedList() => _invitedList != null;

  // "therapist" field.
  bool? _therapist;
  bool get therapist => _therapist ?? false;
  bool hasTherapist() => _therapist != null;

  // "patients" field.
  List<DocumentReference>? _patients;
  List<DocumentReference> get patients => _patients ?? const [];
  bool hasPatients() => _patients != null;

  // "last_updated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  // "ai_generated_notes" field.
  bool? _aiGeneratedNotes;
  bool get aiGeneratedNotes => _aiGeneratedNotes ?? false;
  bool hasAiGeneratedNotes() => _aiGeneratedNotes != null;

  // "practicecode" field.
  String? _practicecode;
  String get practicecode => _practicecode ?? '';
  bool hasPracticecode() => _practicecode != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "assigned_therapist" field.
  DocumentReference? _assignedTherapist;
  DocumentReference? get assignedTherapist => _assignedTherapist;
  bool hasAssignedTherapist() => _assignedTherapist != null;

  // "licensenumber" field.
  String? _licensenumber;
  String get licensenumber => _licensenumber ?? '';
  bool hasLicensenumber() => _licensenumber != null;

  // "educational_background" field.
  String? _educationalBackground;
  String get educationalBackground => _educationalBackground ?? '';
  bool hasEducationalBackground() => _educationalBackground != null;

  // "years_of_practice" field.
  int? _yearsOfPractice;
  int get yearsOfPractice => _yearsOfPractice ?? 0;
  bool hasYearsOfPractice() => _yearsOfPractice != null;

  // "modalities" field.
  String? _modalities;
  String get modalities => _modalities ?? '';
  bool hasModalities() => _modalities != null;

  // "patient_demographics" field.
  String? _patientDemographics;
  String get patientDemographics => _patientDemographics ?? '';
  bool hasPatientDemographics() => _patientDemographics != null;

  // "areas_expertise" field.
  String? _areasExpertise;
  String get areasExpertise => _areasExpertise ?? '';
  bool hasAreasExpertise() => _areasExpertise != null;

  // "clients_per_week" field.
  int? _clientsPerWeek;
  int get clientsPerWeek => _clientsPerWeek ?? 0;
  bool hasClientsPerWeek() => _clientsPerWeek != null;

  // "practice_type" field.
  String? _practiceType;
  String get practiceType => _practiceType ?? '';
  bool hasPracticeType() => _practiceType != null;

  // "practice_address" field.
  String? _practiceAddress;
  String get practiceAddress => _practiceAddress ?? '';
  bool hasPracticeAddress() => _practiceAddress != null;

  // "professional_title" field.
  String? _professionalTitle;
  String get professionalTitle => _professionalTitle ?? '';
  bool hasProfessionalTitle() => _professionalTitle != null;

  // "rolling_insights" field.
  String? _rollingInsights;
  String get rollingInsights => _rollingInsights ?? '';
  bool hasRollingInsights() => _rollingInsights != null;

  // "intake_summary" field.
  String? _intakeSummary;
  String get intakeSummary => _intakeSummary ?? '';
  bool hasIntakeSummary() => _intakeSummary != null;

  // "intake_processed" field.
  bool? _intakeProcessed;
  bool get intakeProcessed => _intakeProcessed ?? false;
  bool hasIntakeProcessed() => _intakeProcessed != null;

  // "intake_support_dynamics" field.
  String? _intakeSupportDynamics;
  String get intakeSupportDynamics => _intakeSupportDynamics ?? '';
  bool hasIntakeSupportDynamics() => _intakeSupportDynamics != null;

  // "intake_diagnostics" field.
  String? _intakeDiagnostics;
  String get intakeDiagnostics => _intakeDiagnostics ?? '';
  bool hasIntakeDiagnostics() => _intakeDiagnostics != null;

  // "intake_questions" field.
  String? _intakeQuestions;
  String get intakeQuestions => _intakeQuestions ?? '';
  bool hasIntakeQuestions() => _intakeQuestions != null;

  // "additional_notes" field.
  String? _additionalNotes;
  String get additionalNotes => _additionalNotes ?? '';
  bool hasAdditionalNotes() => _additionalNotes != null;

  // "dateofbirth" field.
  DateTime? _dateofbirth;
  DateTime? get dateofbirth => _dateofbirth;
  bool hasDateofbirth() => _dateofbirth != null;

  // "dataconsent" field.
  bool? _dataconsent;
  bool get dataconsent => _dataconsent ?? false;
  bool hasDataconsent() => _dataconsent != null;

  // "patient_documents" field.
  List<DocumentReference>? _patientDocuments;
  List<DocumentReference> get patientDocuments => _patientDocuments ?? const [];
  bool hasPatientDocuments() => _patientDocuments != null;

  // "finished_setup" field.
  bool? _finishedSetup;
  bool get finishedSetup => _finishedSetup ?? false;
  bool hasFinishedSetup() => _finishedSetup != null;

  // "signed_ba" field.
  bool? _signedBa;
  bool get signedBa => _signedBa ?? false;
  bool hasSignedBa() => _signedBa != null;

  // "practice_name" field.
  String? _practiceName;
  String get practiceName => _practiceName ?? '';
  bool hasPracticeName() => _practiceName != null;

  // "baa_signature" field.
  String? _baaSignature;
  String get baaSignature => _baaSignature ?? '';
  bool hasBaaSignature() => _baaSignature != null;

  // "patient_doc" field.
  DocumentReference? _patientDoc;
  DocumentReference? get patientDoc => _patientDoc;
  bool hasPatientDoc() => _patientDoc != null;

  // "subscription_plan" field.
  String? _subscriptionPlan;
  String get subscriptionPlan => _subscriptionPlan ?? '';
  bool hasSubscriptionPlan() => _subscriptionPlan != null;

  // "preferred_note_styles" field.
  List<String>? _preferredNoteStyles;
  List<String> get preferredNoteStyles => _preferredNoteStyles ?? const [];
  bool hasPreferredNoteStyles() => _preferredNoteStyles != null;

  // "subscription" field.
  String? _subscription;
  String get subscription => _subscription ?? '';
  bool hasSubscription() => _subscription != null;

  // "subscription_type" field.
  String? _subscriptionType;
  String get subscriptionType => _subscriptionType ?? '';
  bool hasSubscriptionType() => _subscriptionType != null;

  // "subscription_id" field.
  String? _subscriptionId;
  String get subscriptionId => _subscriptionId ?? '';
  bool hasSubscriptionId() => _subscriptionId != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _patient = snapshotData['patient'] as bool?;
    _invitedList = getDataList(snapshotData['InvitedList']);
    _therapist = snapshotData['therapist'] as bool?;
    _patients = getDataList(snapshotData['patients']);
    _lastUpdated = snapshotData['last_updated'] as DateTime?;
    _aiGeneratedNotes = snapshotData['ai_generated_notes'] as bool?;
    _practicecode = snapshotData['practicecode'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _gender = snapshotData['gender'] as String?;
    _assignedTherapist =
        snapshotData['assigned_therapist'] as DocumentReference?;
    _licensenumber = snapshotData['licensenumber'] as String?;
    _educationalBackground = snapshotData['educational_background'] as String?;
    _yearsOfPractice = castToType<int>(snapshotData['years_of_practice']);
    _modalities = snapshotData['modalities'] as String?;
    _patientDemographics = snapshotData['patient_demographics'] as String?;
    _areasExpertise = snapshotData['areas_expertise'] as String?;
    _clientsPerWeek = castToType<int>(snapshotData['clients_per_week']);
    _practiceType = snapshotData['practice_type'] as String?;
    _practiceAddress = snapshotData['practice_address'] as String?;
    _professionalTitle = snapshotData['professional_title'] as String?;
    _rollingInsights = snapshotData['rolling_insights'] as String?;
    _intakeSummary = snapshotData['intake_summary'] as String?;
    _intakeProcessed = snapshotData['intake_processed'] as bool?;
    _intakeSupportDynamics = snapshotData['intake_support_dynamics'] as String?;
    _intakeDiagnostics = snapshotData['intake_diagnostics'] as String?;
    _intakeQuestions = snapshotData['intake_questions'] as String?;
    _additionalNotes = snapshotData['additional_notes'] as String?;
    _dateofbirth = snapshotData['dateofbirth'] as DateTime?;
    _dataconsent = snapshotData['dataconsent'] as bool?;
    _patientDocuments = getDataList(snapshotData['patient_documents']);
    _finishedSetup = snapshotData['finished_setup'] as bool?;
    _signedBa = snapshotData['signed_ba'] as bool?;
    _practiceName = snapshotData['practice_name'] as String?;
    _baaSignature = snapshotData['baa_signature'] as String?;
    _patientDoc = snapshotData['patient_doc'] as DocumentReference?;
    _subscriptionPlan = snapshotData['subscription_plan'] as String?;
    _preferredNoteStyles = getDataList(snapshotData['preferred_note_styles']);
    _subscription = snapshotData['subscription'] as String?;
    _subscriptionType = snapshotData['subscription_type'] as String?;
    _subscriptionId = snapshotData['subscription_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? patient,
  bool? therapist,
  DateTime? lastUpdated,
  bool? aiGeneratedNotes,
  String? practicecode,
  int? age,
  String? gender,
  DocumentReference? assignedTherapist,
  String? licensenumber,
  String? educationalBackground,
  int? yearsOfPractice,
  String? modalities,
  String? patientDemographics,
  String? areasExpertise,
  int? clientsPerWeek,
  String? practiceType,
  String? practiceAddress,
  String? professionalTitle,
  String? rollingInsights,
  String? intakeSummary,
  bool? intakeProcessed,
  String? intakeSupportDynamics,
  String? intakeDiagnostics,
  String? intakeQuestions,
  String? additionalNotes,
  DateTime? dateofbirth,
  bool? dataconsent,
  bool? finishedSetup,
  bool? signedBa,
  String? practiceName,
  String? baaSignature,
  DocumentReference? patientDoc,
  String? subscriptionPlan,
  String? subscription,
  String? subscriptionType,
  String? subscriptionId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'patient': patient,
      'therapist': therapist,
      'last_updated': lastUpdated,
      'ai_generated_notes': aiGeneratedNotes,
      'practicecode': practicecode,
      'age': age,
      'gender': gender,
      'assigned_therapist': assignedTherapist,
      'licensenumber': licensenumber,
      'educational_background': educationalBackground,
      'years_of_practice': yearsOfPractice,
      'modalities': modalities,
      'patient_demographics': patientDemographics,
      'areas_expertise': areasExpertise,
      'clients_per_week': clientsPerWeek,
      'practice_type': practiceType,
      'practice_address': practiceAddress,
      'professional_title': professionalTitle,
      'rolling_insights': rollingInsights,
      'intake_summary': intakeSummary,
      'intake_processed': intakeProcessed,
      'intake_support_dynamics': intakeSupportDynamics,
      'intake_diagnostics': intakeDiagnostics,
      'intake_questions': intakeQuestions,
      'additional_notes': additionalNotes,
      'dateofbirth': dateofbirth,
      'dataconsent': dataconsent,
      'finished_setup': finishedSetup,
      'signed_ba': signedBa,
      'practice_name': practiceName,
      'baa_signature': baaSignature,
      'patient_doc': patientDoc,
      'subscription_plan': subscriptionPlan,
      'subscription': subscription,
      'subscription_type': subscriptionType,
      'subscription_id': subscriptionId,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.patient == e2?.patient &&
        listEquality.equals(e1?.invitedList, e2?.invitedList) &&
        e1?.therapist == e2?.therapist &&
        listEquality.equals(e1?.patients, e2?.patients) &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.aiGeneratedNotes == e2?.aiGeneratedNotes &&
        e1?.practicecode == e2?.practicecode &&
        e1?.age == e2?.age &&
        e1?.gender == e2?.gender &&
        e1?.assignedTherapist == e2?.assignedTherapist &&
        e1?.licensenumber == e2?.licensenumber &&
        e1?.educationalBackground == e2?.educationalBackground &&
        e1?.yearsOfPractice == e2?.yearsOfPractice &&
        e1?.modalities == e2?.modalities &&
        e1?.patientDemographics == e2?.patientDemographics &&
        e1?.areasExpertise == e2?.areasExpertise &&
        e1?.clientsPerWeek == e2?.clientsPerWeek &&
        e1?.practiceType == e2?.practiceType &&
        e1?.practiceAddress == e2?.practiceAddress &&
        e1?.professionalTitle == e2?.professionalTitle &&
        e1?.rollingInsights == e2?.rollingInsights &&
        e1?.intakeSummary == e2?.intakeSummary &&
        e1?.intakeProcessed == e2?.intakeProcessed &&
        e1?.intakeSupportDynamics == e2?.intakeSupportDynamics &&
        e1?.intakeDiagnostics == e2?.intakeDiagnostics &&
        e1?.intakeQuestions == e2?.intakeQuestions &&
        e1?.additionalNotes == e2?.additionalNotes &&
        e1?.dateofbirth == e2?.dateofbirth &&
        e1?.dataconsent == e2?.dataconsent &&
        listEquality.equals(e1?.patientDocuments, e2?.patientDocuments) &&
        e1?.finishedSetup == e2?.finishedSetup &&
        e1?.signedBa == e2?.signedBa &&
        e1?.practiceName == e2?.practiceName &&
        e1?.baaSignature == e2?.baaSignature &&
        e1?.patientDoc == e2?.patientDoc &&
        e1?.subscriptionPlan == e2?.subscriptionPlan &&
        listEquality.equals(e1?.preferredNoteStyles, e2?.preferredNoteStyles) &&
        e1?.subscription == e2?.subscription &&
        e1?.subscriptionType == e2?.subscriptionType &&
        e1?.subscriptionId == e2?.subscriptionId;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.patient,
        e?.invitedList,
        e?.therapist,
        e?.patients,
        e?.lastUpdated,
        e?.aiGeneratedNotes,
        e?.practicecode,
        e?.age,
        e?.gender,
        e?.assignedTherapist,
        e?.licensenumber,
        e?.educationalBackground,
        e?.yearsOfPractice,
        e?.modalities,
        e?.patientDemographics,
        e?.areasExpertise,
        e?.clientsPerWeek,
        e?.practiceType,
        e?.practiceAddress,
        e?.professionalTitle,
        e?.rollingInsights,
        e?.intakeSummary,
        e?.intakeProcessed,
        e?.intakeSupportDynamics,
        e?.intakeDiagnostics,
        e?.intakeQuestions,
        e?.additionalNotes,
        e?.dateofbirth,
        e?.dataconsent,
        e?.patientDocuments,
        e?.finishedSetup,
        e?.signedBa,
        e?.practiceName,
        e?.baaSignature,
        e?.patientDoc,
        e?.subscriptionPlan,
        e?.preferredNoteStyles,
        e?.subscription,
        e?.subscriptionType,
        e?.subscriptionId
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
