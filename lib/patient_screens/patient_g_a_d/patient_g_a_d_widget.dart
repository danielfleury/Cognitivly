import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'patient_g_a_d_model.dart';
export 'patient_g_a_d_model.dart';

class PatientGADWidget extends StatefulWidget {
  const PatientGADWidget({
    super.key,
    required this.patientassessdoc,
  });

  final PatientAssessmentsRecord? patientassessdoc;

  @override
  _PatientGADWidgetState createState() => _PatientGADWidgetState();
}

class _PatientGADWidgetState extends State<PatientGADWidget> {
  late PatientGADModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientGADModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'PatientGAD'});
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
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(40.0, 60.0, 40.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AuthUserStreamWidget(
                        builder: (context) => GradientText(
                          'Hi $currentUserDisplayName',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Manrope',
                                color: const Color(0xFF4D4D4D),
                                fontSize: 30.0,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                          colors: const [Color(0xFF555555), Color(0xFF939393)],
                          gradientDirection: GradientDirection.ltr,
                          gradientType: GradientType.linear,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'Your care team would like to assess your mental health symptoms over the past few days.',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Manrope',
                                color: const Color(0xFF969696),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                                lineHeight: 1.8,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 500.0,
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: PageView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _model.pageViewController ??=
                            PageController(initialPage: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                40.0, 0.0, 40.0, 40.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: GradientText(
                                    'Over the past 2 weeks, how often have you felt nervous, anxious, or on edge? ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF767676),
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w300,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.8,
                                        ),
                                    colors: const [
                                      Color(0xFF494949),
                                      Color(0xFFA0A0A0)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Not at all',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Several days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'More than half the days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Nearly every day',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Slider(
                                    activeColor: const Color(0xFF414861),
                                    inactiveColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    min: 0.0,
                                    max: 3.0,
                                    value: _model.sliderValue1 ??= 1.0,
                                    label: _model.sliderValue1.toString(),
                                    divisions: 3,
                                    onChanged: (newValue) {
                                      setState(
                                          () => _model.sliderValue1 = newValue);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'PATIENT_G_A_D_PAGE_NEXT_BTN_ON_TAP');
                                      logFirebaseEvent('Button_page_view');
                                      await _model.pageViewController?.nextPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    text: 'Next',
                                    icon: const Icon(
                                      Icons.arrow_right_alt,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 24.0, 24.0, 24.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF646464),
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 0.0,
                                      borderSide: const BorderSide(
                                        color: Color(0xFFD1D1D1),
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                40.0, 0.0, 40.0, 40.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: GradientText(
                                    'Over the past 2 weeks, how often have you not been able to stop or control worrying?',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF767676),
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w300,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.8,
                                        ),
                                    colors: const [
                                      Color(0xFF494949),
                                      Color(0xFFA0A0A0)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Not at all',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Several days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'More than half the days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Nearly every day',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Slider(
                                    activeColor: const Color(0xFF414861),
                                    inactiveColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    min: 0.0,
                                    max: 3.0,
                                    value: _model.sliderValue2 ??= 1.0,
                                    label: _model.sliderValue2.toString(),
                                    divisions: 3,
                                    onChanged: (newValue) {
                                      setState(
                                          () => _model.sliderValue2 = newValue);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'PATIENT_G_A_D_PAGE_NEXT_BTN_ON_TAP');
                                      logFirebaseEvent('Button_page_view');
                                      await _model.pageViewController?.nextPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    text: 'Next',
                                    icon: const Icon(
                                      Icons.arrow_right_alt,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 24.0, 24.0, 24.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF646464),
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 0.0,
                                      borderSide: const BorderSide(
                                        color: Color(0xFFD1D1D1),
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                40.0, 0.0, 40.0, 40.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: GradientText(
                                    'Over the past 2 weeks, how often have you worried too much about different things? ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF767676),
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w300,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.8,
                                        ),
                                    colors: const [
                                      Color(0xFF494949),
                                      Color(0xFFA0A0A0)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Not at all',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Several days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'More than half the days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Nearly every day',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Slider(
                                    activeColor: const Color(0xFF414861),
                                    inactiveColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    min: 0.0,
                                    max: 3.0,
                                    value: _model.sliderValue3 ??= 1.0,
                                    label: _model.sliderValue3.toString(),
                                    divisions: 3,
                                    onChanged: (newValue) {
                                      setState(
                                          () => _model.sliderValue3 = newValue);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'PATIENT_G_A_D_PAGE_NEXT_BTN_ON_TAP');
                                      logFirebaseEvent('Button_page_view');
                                      await _model.pageViewController?.nextPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    text: 'Next',
                                    icon: const Icon(
                                      Icons.arrow_right_alt,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 24.0, 24.0, 24.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF646464),
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 0.0,
                                      borderSide: const BorderSide(
                                        color: Color(0xFFD1D1D1),
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                40.0, 0.0, 40.0, 40.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: GradientText(
                                    'Over the past 2 weeks, how often have you had trouble relaxing?',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF767676),
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w300,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.8,
                                        ),
                                    colors: const [
                                      Color(0xFF494949),
                                      Color(0xFFA0A0A0)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Not at all',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Several days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'More than half the days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Nearly every day',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Slider(
                                    activeColor: const Color(0xFF414861),
                                    inactiveColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    min: 0.0,
                                    max: 3.0,
                                    value: _model.sliderValue4 ??= 1.0,
                                    label: _model.sliderValue4.toString(),
                                    divisions: 3,
                                    onChanged: (newValue) {
                                      setState(
                                          () => _model.sliderValue4 = newValue);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'PATIENT_G_A_D_PAGE_NEXT_BTN_ON_TAP');
                                      logFirebaseEvent('Button_page_view');
                                      await _model.pageViewController?.nextPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    text: 'Next',
                                    icon: const Icon(
                                      Icons.arrow_right_alt,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 24.0, 24.0, 24.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF646464),
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 0.0,
                                      borderSide: const BorderSide(
                                        color: Color(0xFFD1D1D1),
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                40.0, 0.0, 40.0, 40.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: GradientText(
                                    'Over the past two weeks, how often have you been restless that it\'s hard to sit still?',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF767676),
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w300,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.8,
                                        ),
                                    colors: const [
                                      Color(0xFF494949),
                                      Color(0xFFA0A0A0)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Not at all',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Several days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'More than half the days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Nearly every day',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Slider(
                                    activeColor: const Color(0xFF414861),
                                    inactiveColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    min: 0.0,
                                    max: 3.0,
                                    value: _model.sliderValue5 ??= 1.0,
                                    label: _model.sliderValue5.toString(),
                                    divisions: 3,
                                    onChanged: (newValue) {
                                      setState(
                                          () => _model.sliderValue5 = newValue);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'PATIENT_G_A_D_PAGE_NEXT_BTN_ON_TAP');
                                      logFirebaseEvent('Button_page_view');
                                      await _model.pageViewController?.nextPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    text: 'Next',
                                    icon: const Icon(
                                      Icons.arrow_right_alt,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 24.0, 24.0, 24.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF646464),
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 0.0,
                                      borderSide: const BorderSide(
                                        color: Color(0xFFD1D1D1),
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                40.0, 0.0, 40.0, 40.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: GradientText(
                                    'Over the past 2 weeks, how often have you become easily annoyed or irritable?',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF767676),
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w300,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.8,
                                        ),
                                    colors: const [
                                      Color(0xFF494949),
                                      Color(0xFFA0A0A0)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Not at all',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Several days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'More than half the days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Nearly every day',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Slider(
                                    activeColor: const Color(0xFF414861),
                                    inactiveColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    min: 0.0,
                                    max: 3.0,
                                    value: _model.sliderValue6 ??= 1.0,
                                    label: _model.sliderValue6.toString(),
                                    divisions: 3,
                                    onChanged: (newValue) {
                                      setState(
                                          () => _model.sliderValue6 = newValue);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'PATIENT_G_A_D_PAGE_NEXT_BTN_ON_TAP');
                                      logFirebaseEvent('Button_page_view');
                                      await _model.pageViewController?.nextPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    text: 'Next',
                                    icon: const Icon(
                                      Icons.arrow_right_alt,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 24.0, 24.0, 24.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF646464),
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 0.0,
                                      borderSide: const BorderSide(
                                        color: Color(0xFFD1D1D1),
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                40.0, 0.0, 40.0, 40.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: GradientText(
                                    'Over the past 2 weeks, how often have you felt afraid as if something awful might happen?',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF767676),
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w300,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.8,
                                        ),
                                    colors: const [
                                      Color(0xFF494949),
                                      Color(0xFFA0A0A0)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Not at all',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Several days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'More than half the days',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Text(
                                        'Nearly every day',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Slider(
                                    activeColor: const Color(0xFF414861),
                                    inactiveColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    min: 0.0,
                                    max: 3.0,
                                    value: _model.sliderValue7 ??= 1.0,
                                    label: _model.sliderValue7.toString(),
                                    divisions: 3,
                                    onChanged: (newValue) {
                                      setState(
                                          () => _model.sliderValue7 = newValue);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'PATIENT_G_A_D_PAGE_FINISH_BTN_ON_TAP');
                                      logFirebaseEvent('Button_backend_call');

                                      await widget.patientassessdoc!.gad7doc!
                                          .update(createGad7RecordData(
                                        q1: _model.sliderValue1,
                                        q2: _model.sliderValue2,
                                        q3: _model.sliderValue3,
                                        q4: _model.sliderValue4,
                                        q5: _model.sliderValue5,
                                        q6: _model.sliderValue6,
                                        q7: _model.sliderValue7,
                                        total: valueOrDefault<double>(
                                          (_model.sliderValue1!) +
                                              (_model.sliderValue2!) +
                                              (_model.sliderValue3!) +
                                              (_model.sliderValue4!) +
                                              (_model.sliderValue5!) +
                                              (_model.sliderValue6!) +
                                              (_model.sliderValue7!),
                                          0.0,
                                        ),
                                        interpretation:
                                            functions.calculateGAD7Score(
                                                _model.sliderValue1!,
                                                _model.sliderValue2!,
                                                _model.sliderValue3!,
                                                _model.sliderValue4!,
                                                _model.sliderValue5!,
                                                _model.sliderValue6!,
                                                _model.sliderValue7!),
                                        complete: true,
                                      ));
                                      logFirebaseEvent('Button_backend_call');

                                      await widget.patientassessdoc!.reference
                                          .update(
                                              createPatientAssessmentsRecordData(
                                        completed: true,
                                      ));
                                      logFirebaseEvent('Button_navigate_to');

                                      context.goNamed('PatientHome');
                                    },
                                    text: 'Finish',
                                    icon: const Icon(
                                      Icons.arrow_right_alt,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 24.0, 24.0, 24.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: const Color(0xFF646464),
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 0.0,
                                      borderSide: const BorderSide(
                                        color: Color(0xFFD1D1D1),
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            40.0, 0.0, 0.0, 200.0),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: _model.pageViewController ??=
                              PageController(initialPage: 0),
                          count: 7,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) async {
                            await _model.pageViewController!.animateToPage(
                              i,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          effect: const smooth_page_indicator.ExpandingDotsEffect(
                            expansionFactor: 3.0,
                            spacing: 8.0,
                            radius: 16.0,
                            dotWidth: 10.0,
                            dotHeight: 8.0,
                            dotColor: Color(0x4CCACACA),
                            activeDotColor: Color(0xFF4E4E4E),
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
