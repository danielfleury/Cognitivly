import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'feature_walkthrough_model.dart';
export 'feature_walkthrough_model.dart';

class FeatureWalkthroughWidget extends StatefulWidget {
  const FeatureWalkthroughWidget({super.key});

  @override
  _FeatureWalkthroughWidgetState createState() =>
      _FeatureWalkthroughWidgetState();
}

class _FeatureWalkthroughWidgetState extends State<FeatureWalkthroughWidget>
    with TickerProviderStateMixin {
  late FeatureWalkthroughModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeOut,
          delay: 280.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1690.ms,
          duration: 1500.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1690.ms,
          duration: 1500.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1690.ms,
          duration: 1500.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1690.ms,
          duration: 1500.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1690.ms,
          duration: 1500.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeatureWalkthroughModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'FeatureWalkthrough'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FEATURE_WALKTHROUGH_FeatureWalkthrough_O');
      logFirebaseEvent('FeatureWalkthrough_widget_animation');
      if (animationsMap['containerOnActionTriggerAnimation1'] != null) {
        await animationsMap['containerOnActionTriggerAnimation1']!
            .controller
            .forward(from: 0.0)
            .whenComplete(animationsMap['containerOnActionTriggerAnimation1']!
                .controller
                .reverse);
      }
      logFirebaseEvent('FeatureWalkthrough_widget_animation');
      if (animationsMap['containerOnActionTriggerAnimation2'] != null) {
        await animationsMap['containerOnActionTriggerAnimation2']!
            .controller
            .forward(from: 0.0)
            .whenComplete(animationsMap['containerOnActionTriggerAnimation2']!
                .controller
                .reverse);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: const BoxDecoration(),
                      child: FlutterFlowVideoPlayer(
                        path:
                            'assets/videos/vecteezy_abstract-liquid-blue-gradient-motion-animation_26745509_61.mp4',
                        videoType: VideoType.asset,
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        aspectRatio: 1.77,
                        autoPlay: true,
                        looping: true,
                        showControls: false,
                        allowFullScreen: true,
                        allowPlaybackSpeedMenu: false,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: const BoxDecoration(
                      color: Color(0xC1EAF0FF),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 500.0,
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                        child: PageView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _model.pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GradientText(
                                    'Adding Patients',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF4F4F4F),
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.w100,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                    colors: const [
                                      Color(0xFF193D7B),
                                      Color(0xFF6C95D7)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: GradientText(
                                      'Invite individual patients via a uniquely generated code for your practice',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF5E5E5E),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      colors: const [
                                        Color(0xFF222D93),
                                        Color(0xFF6CA4D7)
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowVideoPlayer(
                                      path:
                                          'assets/videos/CognitivlyAddPatients.mp4',
                                      videoType: VideoType.asset,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      autoPlay: true,
                                      looping: true,
                                      showControls: false,
                                      allowFullScreen: true,
                                      allowPlaybackSpeedMenu: false,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 50.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'FEATURE_WALKTHROUGH_CONTINUE_BTN_ON_TAP');
                                        logFirebaseEvent('Button_page_view');
                                        await _model.pageViewController
                                            ?.nextPage(
                                          duration: const Duration(milliseconds: 300),
                                          curve: Curves.ease,
                                        );
                                      },
                                      text: 'Continue',
                                      icon: const Icon(
                                        Icons.arrow_right_alt,
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        padding: const EdgeInsets.all(30.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xC41A328B),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Color(0x84254C7F),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'buttonOnPageLoadAnimation1']!),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GradientText(
                                    'Generating Intelligent Insights',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF4F4F4F),
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.w100,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                    colors: const [
                                      Color(0xFF193D7B),
                                      Color(0xFF6C95D7)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: GradientText(
                                      'Generate progress notes, psychotherapy notes, and summaries in seconds',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF5E5E5E),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      colors: const [
                                        Color(0xFF222D93),
                                        Color(0xFF6CA4D7)
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowVideoPlayer(
                                      path:
                                          'assets/videos/CognitivlyNoteHighLevelShort.mp4',
                                      videoType: VideoType.asset,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      autoPlay: true,
                                      looping: true,
                                      showControls: false,
                                      allowFullScreen: false,
                                      allowPlaybackSpeedMenu: false,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 50.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'FEATURE_WALKTHROUGH_CONTINUE_BTN_ON_TAP');
                                        logFirebaseEvent('Button_page_view');
                                        await _model.pageViewController
                                            ?.nextPage(
                                          duration: const Duration(milliseconds: 300),
                                          curve: Curves.ease,
                                        );
                                      },
                                      text: 'Continue',
                                      icon: const Icon(
                                        Icons.arrow_right_alt,
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        padding: const EdgeInsets.all(30.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xC41A328B),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Color(0x84254C7F),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'buttonOnPageLoadAnimation2']!),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GradientText(
                                    'Generate Action-Driven Notes',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF4F4F4F),
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.w100,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                    colors: const [
                                      Color(0xFF193D7B),
                                      Color(0xFF6C95D7)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: GradientText(
                                      'Generate progress notes, psychotherapy notes, and summaries in seconds',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF5E5E5E),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      colors: const [
                                        Color(0xFF222D93),
                                        Color(0xFF6CA4D7)
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowVideoPlayer(
                                      path:
                                          'assets/videos/CognitivlyPsychotherapyNoteShort.mp4',
                                      videoType: VideoType.asset,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      autoPlay: true,
                                      looping: true,
                                      showControls: false,
                                      allowFullScreen: false,
                                      allowPlaybackSpeedMenu: false,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 50.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'FEATURE_WALKTHROUGH_CONTINUE_BTN_ON_TAP');
                                        logFirebaseEvent('Button_page_view');
                                        await _model.pageViewController
                                            ?.nextPage(
                                          duration: const Duration(milliseconds: 300),
                                          curve: Curves.ease,
                                        );
                                      },
                                      text: 'Continue',
                                      icon: const Icon(
                                        Icons.arrow_right_alt,
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        padding: const EdgeInsets.all(30.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xC41A328B),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Color(0x84254C7F),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'buttonOnPageLoadAnimation3']!),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GradientText(
                                    'Record, Transcribe, and Analyze Session Audio in Real-Time',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF4F4F4F),
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.w100,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                    colors: const [
                                      Color(0xFF193D7B),
                                      Color(0xFF6C95D7)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: GradientText(
                                      'Generate progress notes and psychotherapy notes instantly  after a session',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF5E5E5E),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      colors: const [
                                        Color(0xFF222D93),
                                        Color(0xFF6CA4D7)
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowVideoPlayer(
                                      path:
                                          'assets/videos/CognitivlyNotesAI_3.mp4',
                                      videoType: VideoType.asset,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      autoPlay: true,
                                      looping: true,
                                      showControls: false,
                                      allowFullScreen: false,
                                      allowPlaybackSpeedMenu: false,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 50.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'FEATURE_WALKTHROUGH_CONTINUE_BTN_ON_TAP');
                                        logFirebaseEvent('Button_page_view');
                                        await _model.pageViewController
                                            ?.nextPage(
                                          duration: const Duration(milliseconds: 300),
                                          curve: Curves.ease,
                                        );
                                      },
                                      text: 'Continue',
                                      icon: const Icon(
                                        Icons.arrow_right_alt,
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        padding: const EdgeInsets.all(30.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xC41A328B),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Color(0x84254C7F),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'buttonOnPageLoadAnimation4']!),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GradientText(
                                    'Chat with Therapy Notes',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF4F4F4F),
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.w100,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                    colors: const [
                                      Color(0xFF193D7B),
                                      Color(0xFF6C95D7)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: GradientText(
                                      'Your ultimate assistant here to bounce off ideas or answer questions about therapy notes',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF5E5E5E),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      colors: const [
                                        Color(0xFF222D93),
                                        Color(0xFF6CA4D7)
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowVideoPlayer(
                                      path:
                                          'assets/videos/CognitivlyNotesAI_4.mp4',
                                      videoType: VideoType.asset,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      autoPlay: true,
                                      looping: true,
                                      showControls: false,
                                      allowFullScreen: false,
                                      allowPlaybackSpeedMenu: false,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 50.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'FEATURE_WALKTHROUGH_FINISH_BTN_ON_TAP');
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed(
                                          'PatientExplorer',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      },
                                      text: 'Finish',
                                      icon: const Icon(
                                        Icons.arrow_right_alt,
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        padding: const EdgeInsets.all(30.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xC41A328B),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Color(0x84254C7F),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'buttonOnPageLoadAnimation5']!),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
