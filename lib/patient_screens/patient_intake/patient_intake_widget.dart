import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'patient_intake_model.dart';
export 'patient_intake_model.dart';

class PatientIntakeWidget extends StatefulWidget {
  const PatientIntakeWidget({
    super.key,
    required this.patientassessdoc,
  });

  final PatientAssessmentsRecord? patientassessdoc;

  @override
  _PatientIntakeWidgetState createState() => _PatientIntakeWidgetState();
}

class _PatientIntakeWidgetState extends State<PatientIntakeWidget> {
  late PatientIntakeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientIntakeModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PatientIntake'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
                      GradientText(
                        'Hi Daniel',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                                    'Over the past 2 weeks, how often have you had little interest or pleasure in doing things?',
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                    onPressed: () {
                                      print('Button pressed ...');
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
                                    'Over the past 2 weeks, how often have you  felt down, depressed, or hopeless?',
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                    onPressed: () {
                                      print('Button pressed ...');
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
                                    'Over the past 2 weeks, how often have you had trouble falling or staying asleep, or sleeping too much ?',
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                    onPressed: () {
                                      print('Button pressed ...');
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
                                    'Over the past 2 weeks, how often have you felt tired or had little energy?',
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                    onPressed: () {
                                      print('Button pressed ...');
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
                                    'Over the past 2 weeks, how often you have experienced poor appetite or overeating?',
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                    onPressed: () {
                                      print('Button pressed ...');
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
                                    'Over the past two weeks, how often have you felt bad about yourself — or that you are a failure or have let yourself or your family down?',
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                    onPressed: () {
                                      print('Button pressed ...');
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
                                    'Over the past 2 weeks, how often have you had trouble concentrating on things, such as reading the newspaper or watching television?',
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                    onPressed: () {
                                      print('Button pressed ...');
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
                                    'Over the past 2 weeks, how often have you moved or spoke so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual',
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                    value: _model.sliderValue8 ??= 1.0,
                                    label: _model.sliderValue8.toString(),
                                    divisions: 3,
                                    onChanged: (newValue) {
                                      setState(
                                          () => _model.sliderValue8 = newValue);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
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
                                    'Over the past 2 weeks, how often have you had thoughts that you would be better off dead or of hurting yourself in some way?',
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
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
                                    value: _model.sliderValue9 ??= 1.0,
                                    label: _model.sliderValue9.toString(),
                                    divisions: 3,
                                    onChanged: (newValue) {
                                      setState(
                                          () => _model.sliderValue9 = newValue);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'PATIENT_INTAKE_PAGE_FINISH_BTN_ON_TAP');
                                      logFirebaseEvent('Button_backend_call');

                                      await Phq9Record.collection
                                          .doc()
                                          .set(createPhq9RecordData(
                                            q1: _model.sliderValue1,
                                            q2: _model.sliderValue2,
                                            q3: _model.sliderValue3,
                                            q4: _model.sliderValue4,
                                            q5: _model.sliderValue5,
                                            q6: _model.sliderValue6,
                                            q7: _model.sliderValue7,
                                            q8: _model.sliderValue8,
                                            q9: _model.sliderValue9,
                                            total: (_model.sliderValue1!) +
                                                (_model.sliderValue2!) +
                                                (_model.sliderValue3!) +
                                                (_model.sliderValue4!) +
                                                (_model.sliderValue5!) +
                                                (_model.sliderValue6!) +
                                                (_model.sliderValue7!) +
                                                (_model.sliderValue8!) +
                                                (_model.sliderValue9!),
                                            interpretation:
                                                functions.calculatePHQ9Score(
                                                    _model.sliderValue1!,
                                                    _model.sliderValue2!,
                                                    _model.sliderValue3!,
                                                    _model.sliderValue4!,
                                                    _model.sliderValue5!,
                                                    _model.sliderValue6!,
                                                    _model.sliderValue7!,
                                                    _model.sliderValue8!,
                                                    _model.sliderValue9!),
                                            date: getCurrentTimestamp,
                                            patientdoc: widget.patientassessdoc
                                                ?.patientDocument,
                                          ));
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
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.85,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        40.0, 50.0, 40.0, 40.0),
                                    child: SingleChildScrollView(
                                      controller: _model.chatlogsmaster,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Gathering Some Context',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color:
                                                            const Color(0xFF646464),
                                                        fontSize: 22.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Your therapist, Jane Williams, has requested that I collect some information ahead of the appointment',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF969696),
                                                          fontSize: 10.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                          lineHeight: 1.8,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: StreamBuilder<
                                                List<
                                                    PatientAssessmentChatsRecord>>(
                                              stream:
                                                  queryPatientAssessmentChatsRecord(
                                                queryBuilder:
                                                    (patientAssessmentChatsRecord) =>
                                                        patientAssessmentChatsRecord
                                                            .where(
                                                              'patient_assessment',
                                                              isEqualTo: widget
                                                                  .patientassessdoc
                                                                  ?.reference,
                                                            )
                                                            .orderBy('date'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return const Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child: SpinKitRipple(
                                                        color:
                                                            Color(0xFFB9DFFF),
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<PatientAssessmentChatsRecord>
                                                    chatLogsPatientAssessmentChatsRecordList =
                                                    snapshot.data!;
                                                return SingleChildScrollView(
                                                  controller: _model.chatLogs,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: List.generate(
                                                        chatLogsPatientAssessmentChatsRecordList
                                                            .length,
                                                        (chatLogsIndex) {
                                                      final chatLogsPatientAssessmentChatsRecord =
                                                          chatLogsPatientAssessmentChatsRecordList[
                                                              chatLogsIndex];
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    20.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    if (chatLogsPatientAssessmentChatsRecord
                                                                        .visible)
                                                                      Container(
                                                                        constraints:
                                                                            BoxConstraints(
                                                                          maxWidth:
                                                                              MediaQuery.sizeOf(context).width * 0.7,
                                                                        ),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              const Color(0x00FFFFFF),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                const Color(0xFFD7D9E0),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(20.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              Text(
                                                                                chatLogsPatientAssessmentChatsRecord.patientMessage,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: const Color(0xFF646464),
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      lineHeight: 1.8,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    if (chatLogsPatientAssessmentChatsRecord.aiResponse !=
                                                                            '')
                                                                      Container(
                                                                        constraints:
                                                                            BoxConstraints(
                                                                          maxWidth:
                                                                              MediaQuery.sizeOf(context).width * 0.7,
                                                                        ),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          gradient:
                                                                              const LinearGradient(
                                                                            colors: [
                                                                              Colors.white,
                                                                              Color(0xBAF3F7FF),
                                                                              Color(0xBFDFEAFF),
                                                                              Color(0x62E7E2FF),
                                                                              Colors.white
                                                                            ],
                                                                            stops: [
                                                                              0.0,
                                                                              0.6,
                                                                              0.8,
                                                                              1.0,
                                                                              1.0
                                                                            ],
                                                                            begin:
                                                                                AlignmentDirectional(-0.98, -1.0),
                                                                            end:
                                                                                AlignmentDirectional(0.98, 1.0),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                const Color(0x98B3C5DE),
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(20.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                chatLogsPatientAssessmentChatsRecord.aiResponse,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: const Color(0xFF646464),
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      lineHeight: 1.8,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.15,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color: const Color(0xFFD7DAE0),
                                                width: 1.5,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Form(
                                                      key: _model.formKey,
                                                      autovalidateMode:
                                                          AutovalidateMode
                                                              .disabled,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textController,
                                                        focusNode: _model
                                                            .textFieldFocusNode,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText:
                                                              'Message Cognitiv.ly',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    color: const Color(
                                                                        0xFF969696),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                          enabledBorder:
                                                              InputBorder.none,
                                                          focusedBorder:
                                                              InputBorder.none,
                                                          errorBorder:
                                                              InputBorder.none,
                                                          focusedErrorBorder:
                                                              InputBorder.none,
                                                          contentPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      15.0),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFF646464),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                        minLines: 1,
                                                        validator: _model
                                                            .textControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'PATIENT_INTAKE_Image_4xj5sssj_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Image_validate_form');
                                                      if (_model.formKey
                                                                  .currentState ==
                                                              null ||
                                                          !_model.formKey
                                                              .currentState!
                                                              .validate()) {
                                                        return;
                                                      }
                                                      logFirebaseEvent(
                                                          'Image_cloud_function');
                                                      try {
                                                        final result =
                                                            await FirebaseFunctions
                                                                .instance
                                                                .httpsCallable(
                                                                    'assessmentAgent')
                                                                .call({
                                                          "documentid": widget
                                                              .patientassessdoc
                                                              ?.reference
                                                              .id,
                                                          "usermessage": functions
                                                              .replaceDoubleQuotesLines(
                                                                  functions.replaceLineBreaks(_model
                                                                      .textController
                                                                      .text)),
                                                        });
                                                        _model.assessmentconversation =
                                                            AssessmentAgentCloudFunctionCallResponse(
                                                          succeeded: true,
                                                        );
                                                      } on FirebaseFunctionsException catch (error) {
                                                        _model.assessmentconversation =
                                                            AssessmentAgentCloudFunctionCallResponse(
                                                          errorCode: error.code,
                                                          succeeded: false,
                                                        );
                                                      }

                                                      if (_model
                                                          .assessmentconversation!
                                                          .succeeded!) {
                                                        logFirebaseEvent(
                                                            'Image_scroll_to');
                                                        await _model.chatLogs
                                                            ?.animateTo(
                                                          _model
                                                              .chatLogs!
                                                              .position
                                                              .maxScrollExtent,
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  100),
                                                          curve: Curves.ease,
                                                        );
                                                        logFirebaseEvent(
                                                            'Image_scroll_to');
                                                        await _model
                                                            .chatlogsmaster
                                                            ?.animateTo(
                                                          _model
                                                              .chatlogsmaster!
                                                              .position
                                                              .maxScrollExtent,
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  100),
                                                          curve: Curves.ease,
                                                        );
                                                      }

                                                      setState(() {});
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/Right-Arrow-Narrow.svg',
                                                        width: 30.0,
                                                        height: 30.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
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
                          count: 10,
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
