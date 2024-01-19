import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _recording = false;
  bool get recording => _recording;
  set recording(bool value) {
    _recording = value;
  }

  bool _notesfullscreen = false;
  bool get notesfullscreen => _notesfullscreen;
  set notesfullscreen(bool value) {
    _notesfullscreen = value;
  }

  String _audiopath = '';
  String get audiopath => _audiopath;
  set audiopath(String value) {
    _audiopath = value;
  }

  String _notesidepanel = '';
  String get notesidepanel => _notesidepanel;
  set notesidepanel(String value) {
    _notesidepanel = value;
  }

  String _accesstempcode = '';
  String get accesstempcode => _accesstempcode;
  set accesstempcode(String value) {
    _accesstempcode = value;
  }

  String _therapistorpatient = '';
  String get therapistorpatient => _therapistorpatient;
  set therapistorpatient(String value) {
    _therapistorpatient = value;
  }

  bool _chatfullscreen = false;
  bool get chatfullscreen => _chatfullscreen;
  set chatfullscreen(bool value) {
    _chatfullscreen = value;
  }

  String _patientconvhistory = '';
  String get patientconvhistory => _patientconvhistory;
  set patientconvhistory(String value) {
    _patientconvhistory = value;
  }

  bool _noteregenerating = false;
  bool get noteregenerating => _noteregenerating;
  set noteregenerating(bool value) {
    _noteregenerating = value;
  }

  bool _minimizedmenu = false;
  bool get minimizedmenu => _minimizedmenu;
  set minimizedmenu(bool value) {
    _minimizedmenu = value;
  }

  String _temppatientpass = '';
  String get temppatientpass => _temppatientpass;
  set temppatientpass(String value) {
    _temppatientpass = value;
  }

  bool _notestep1processing = false;
  bool get notestep1processing => _notestep1processing;
  set notestep1processing(bool value) {
    _notestep1processing = value;
  }

  bool _noteoptionshover = false;
  bool get noteoptionshover => _noteoptionshover;
  set noteoptionshover(bool value) {
    _noteoptionshover = value;
  }

  bool _profilegenerating = false;
  bool get profilegenerating => _profilegenerating;
  set profilegenerating(bool value) {
    _profilegenerating = value;
  }

  bool _processingaudio = false;
  bool get processingaudio => _processingaudio;
  set processingaudio(bool value) {
    _processingaudio = value;
  }

  bool _notefullscreen = false;
  bool get notefullscreen => _notefullscreen;
  set notefullscreen(bool value) {
    _notefullscreen = value;
  }

  final _patientnotesprofilesManager =
      StreamRequestManager<List<PatientDocumentsRecord>>();
  Stream<List<PatientDocumentsRecord>> patientnotesprofiles({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<PatientDocumentsRecord>> Function() requestFn,
  }) =>
      _patientnotesprofilesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearPatientnotesprofilesCache() => _patientnotesprofilesManager.clear();
  void clearPatientnotesprofilesCacheKey(String? uniqueKey) =>
      _patientnotesprofilesManager.clearRequest(uniqueKey);
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
