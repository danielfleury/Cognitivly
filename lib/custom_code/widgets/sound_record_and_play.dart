// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../auth/firebase_auth/auth_util.dart';

import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'package:record/record.dart';
import 'package:flutter/foundation.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'dart:io';

class SoundRecordAndPlay extends StatefulWidget {
  const SoundRecordAndPlay(
      {Key? key, this.width, this.height, required this.notedocument})
      : super(key: key);

  final double? width;
  final double? height;
  final SessionNotesRecord? notedocument;

  @override
  _SoundRecordAndPlayState createState() => _SoundRecordAndPlayState();
}

class _SoundRecordAndPlayState extends State<SoundRecordAndPlay> {
  bool _isRecording = false;
  bool _isPaused = false;
  bool _isPlaying = false;
  int _recordDuration = 0;
  String? path = '';
  Timer? _timer;
  Timer? _ampTimer;
  final _audioRecorder = Record();
  final player = AudioPlayer();

  Amplitude? _amplitude;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  void dispose() {
    _timer?.cancel();
    _ampTimer?.cancel();
    _audioRecorder.dispose();
    player.stop();
    super.dispose();
  }

  Future<Uint8List?> getUint8ListFromBlobUrl(String? blobUrl) async {
    if (blobUrl == null) {
      return null;
    }

    try {
      if (kIsWeb) {
        // Handle web
        final response = await http.get(Uri.parse(blobUrl));
        if (response.statusCode == 200) {
          return response.bodyBytes;
        } else {
          throw Exception('Failed to download the file');
        }
      } else {
        // Handle mobile
        return await _fetchDataFromBlobUrlOnMobile(blobUrl);
      }
    } catch (e) {
      print('Error downloading file: $e');
      return null;
    }
  }

  Future<Uint8List?> _fetchDataFromBlobUrlOnMobile(String blobUrl) async {
    try {
      const channel = MethodChannel('blobUrlHandler');
      final byteData =
          await channel.invokeMethod('fetchBlobData', {'blobUrl': blobUrl});
      return byteData.buffer.asUint8List();
    } catch (e) {
      print('Error accessing blob data on mobile: $e');
      return null;
    }
  }

  Future<void> _start() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        await _audioRecorder.start();
        FFAppState().processingaudio = false;
        await widget.notedocument!.reference
            .update(createSessionNotesRecordData(
          transcribed: false,
        ));

        bool isRecording = await _audioRecorder.isRecording();
        setState(() {
          _isRecording = isRecording;
          _recordDuration = 0;
        });

        _startTimer();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> _stop() async {
    _timer?.cancel();
    _ampTimer?.cancel();

    // This is the path of the recorded file.
    final path = await _audioRecorder.stop();

    setState(() {
      _isRecording = false;
      _isPaused = true;
    });

    if (kIsWeb) {
      FFAppState().audiopath = path ?? '';
      FFAppState().processingaudio = true;
      Uint8List? bytes = await getUint8ListFromBlobUrl(path);

      if (bytes != null) {
        final now = DateTime.now();
        final formattedDateTime =
            '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}_${now.hour.toString().padLeft(2, '0')}-${now.minute.toString().padLeft(2, '0')}-${now.second.toString().padLeft(2, '0')}';
        final fileName = '$formattedDateTime.wav';
        String directoryPath = '/users/' + currentUserUid + '/audio-recordings';
        final storagePath = '$directoryPath/$fileName';

        try {
          final taskSnapshot = await FirebaseStorage.instance
              .ref()
              .child(storagePath)
              .putData(bytes);
          final downloadUrl = await taskSnapshot.ref.getDownloadURL();

          await widget.notedocument!.reference
              .update(createSessionNotesRecordData(
            audio: downloadUrl,
          ));

          FFAppState().audiopath = downloadUrl;

          final transcript = await getTranscript(downloadUrl);
          await widget.notedocument!.reference
              .update(createSessionNotesRecordData(
            rawNote: transcript,
            transcribed: true,
          ));

          // Clean up after uploading to Firebase
          await FirebaseStorage.instance.ref().child(storagePath).delete();
          FFAppState().processingaudio = false;
        } catch (e) {
          print('An error occurred while uploading audio file: $e');
          FFAppState().processingaudio = false;
        }
      } else {
        print('Failed to read the recorded audio file');
      }
    } else {
      FFAppState().processingaudio = true;

      if (path != null) {
        File file = File(path);
        final timestamp = DateFormat('yyyyMMddHHmmss').format(DateTime.now());
        final fileName = 'uploads/audio_$timestamp.mp3';

        try {
          var taskSnapshot =
              await FirebaseStorage.instance.ref(fileName).putFile(file);
          final downloadUrl = await taskSnapshot.ref.getDownloadURL();

          FFAppState().audiopath = downloadUrl;

          await widget.notedocument!.reference
              .update(createSessionNotesRecordData(
            audio: downloadUrl,
          ));

          // Presuming you have a method similar to the web part for getting transcripts
          final transcript = await getTranscript(downloadUrl);
          await widget.notedocument!.reference
              .update(createSessionNotesRecordData(
            rawNote: transcript,
            transcribed: true,
          ));

          await FirebaseStorage.instance.ref(fileName).delete().then((_) {
            print('Successfully deleted $fileName from Firebase Storage.');
          }).catchError((error) {
            print('Failed to delete $fileName: $error');
          });

          FFAppState().processingaudio = false;
        } on FirebaseException catch (e) {
          print('An error occurred while uploading audio file: $e');
        }
      } else {
        print('No recording path available.');
      }
    }
  }

  Future<void> _play() async {
    await player.setReleaseMode(ReleaseMode.loop);
    kIsWeb
        ? await player.play(UrlSource(path!))
        : await player.play(DeviceFileSource(path!));

    setState(() => _isPaused = false);
    setState(() => _isPlaying = true);
  }

  Future<void> _pause() async {
    await player.pause();

    setState(() => _isPaused = true);
    setState(() => _isPlaying = false);
  }

  Widget _buildTimer() {
    final String minutes = _formatNumber(_recordDuration ~/ 60);
    final String seconds = _formatNumber(_recordDuration % 60);

    return Text(
      '$minutes : $seconds',
      style: FlutterFlowTheme.of(context).bodyText1,
    );
  }

  Widget _buildRecorder() {
    if (_isRecording) {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        child: InkWell(
          onTap: () async {
            _stop();
          },
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.stop_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24,
            ),
          ),
        ),
      );
    } else if (_isPaused) {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        child: InkWell(
          onTap: () async {
            _play();
          },
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24,
            ),
          ),
        ),
      );
    } else if (_isPlaying) {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        child: InkWell(
          onTap: () async {
            _pause();
          },
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.pause_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24,
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        child: InkWell(
          onTap: () async {
            _start();
          },
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.mic_none,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24,
            ),
          ),
        ),
      );
    }
  }

  String _formatNumber(int number) {
    String numberStr = number.toString();
    if (number < 10) {
      numberStr = '0' + numberStr;
    }

    return numberStr;
  }

  void _startTimer() {
    _timer?.cancel();
    _ampTimer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() => _recordDuration++);
    });

    _ampTimer =
        Timer.periodic(const Duration(milliseconds: 200), (Timer t) async {
      _amplitude = await _audioRecorder.getAmplitude();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildRecorder(),
            ],
          ),
        ],
      ),
    );
  }
}
