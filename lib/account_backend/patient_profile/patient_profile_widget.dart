import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'package:badges/badges.dart' as badges;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'patient_profile_model.dart';
export 'patient_profile_model.dart';

class PatientProfileWidget extends StatefulWidget {
  const PatientProfileWidget({super.key});

  @override
  _PatientProfileWidgetState createState() => _PatientProfileWidgetState();
}

class _PatientProfileWidgetState extends State<PatientProfileWidget>
    with TickerProviderStateMixin {
  late PatientProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 1400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 640.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 760.ms,
          duration: 3000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 640.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 1400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 640.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 760.ms,
          duration: 3000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 640.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientProfileModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PatientProfile'});
    _model.textController1 ??=
        TextEditingController(text: currentUserDisplayName);
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.displayNameMobileController ??=
        TextEditingController(text: currentUserDisplayName);
    _model.displayNameMobileFocusNode ??= FocusNode();

    _model.accessCodeMobileController ??= TextEditingController();
    _model.accessCodeMobileFocusNode ??= FocusNode();

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
        body: Stack(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: const BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/milad-fakurian-HE1_K4_-QT8-unsplash.jpg',
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: const BoxDecoration(
                color: Color(0x84182073),
              ),
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(
                  color: Color(0x37000000),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AuthUserStreamWidget(
                        builder: (context) => Text(
                          'Welcome to Cognitiv.ly, $currentUserDisplayName',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Manrope',
                                color: Colors.white,
                                fontSize: 50.0,
                                fontWeight: FontWeight.w200,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation1']!),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'I\'m an assistant to you and your clinician in navigating therapy',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Manrope',
                                color: const Color(0xBDE6E6E6),
                                fontSize: 24.0,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation2']!),
                      ),
                      Flexible(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.6,
                          decoration: const BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            child: PageView(
                              physics: const NeverScrollableScrollPhysics(),
                              controller: _model.pageViewController ??=
                                  PageController(initialPage: 0),
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    decoration: BoxDecoration(
                                      color: const Color(0x1EFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: const Color(0xBCF1F1F1),
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: ClipRect(
                                            child: ImageFiltered(
                                              imageFilter: ImageFilter.blur(
                                                sigmaX: 3.0,
                                                sigmaY: 3.0,
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Form(
                                            key: _model.formKey5,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: Padding(
                                              padding: const EdgeInsets.all(30.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Let\'s Start with Some Basic Details',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Manrope',
                                                            color: Colors.white,
                                                            fontSize: 22.0,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumFamily),
                                                          ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textOnPageLoadAnimation3']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'PATIENT_PROFILE_DATE_OF_BIRTH_BTN_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Button_date_time_picker');
                                                        final datePicked1Date =
                                                            await showDatePicker(
                                                          context: context,
                                                          initialDate:
                                                              getCurrentTimestamp,
                                                          firstDate:
                                                              DateTime(1900),
                                                          lastDate:
                                                              getCurrentTimestamp,
                                                        );

                                                        if (datePicked1Date !=
                                                            null) {
                                                          safeSetState(() {
                                                            _model.datePicked1 =
                                                                DateTime(
                                                              datePicked1Date
                                                                  .year,
                                                              datePicked1Date
                                                                  .month,
                                                              datePicked1Date
                                                                  .day,
                                                            );
                                                          });
                                                        }
                                                      },
                                                      text: valueOrDefault<
                                                          String>(
                                                        dateTimeFormat('yMd',
                                                            _model.datePicked1),
                                                        'Date of Birth',
                                                      ),
                                                      options: FFButtonOptions(
                                                        padding: const EdgeInsets.all(
                                                            20.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            const Color(0x00FFFFFF),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFFE3E3E3),
                                                                  fontSize:
                                                                      14.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily),
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFE3E3E3),
                                                          width: 1.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    2000.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 150.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            const Color(0x00FFFFFF),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    2000.0),
                                                      ),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .dropDownValueController ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        options: const [
                                                          'Woman',
                                                          'Man',
                                                          'Transgender Man',
                                                          'Transgender Woman',
                                                          'Non-Binary',
                                                          'Agender'
                                                        ],
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .dropDownValue =
                                                                val),
                                                        width: 150.0,
                                                        height: 50.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFFE3E3E3),
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                        hintText: 'Gender',
                                                        icon: const Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color:
                                                              Color(0xFFE3E3E3),
                                                          size: 24.0,
                                                        ),
                                                        fillColor:
                                                            const Color(0x00FFFFFF),
                                                        elevation: 2.0,
                                                        borderColor:
                                                            const Color(0xFFE3E3E3),
                                                        borderWidth: 1.5,
                                                        borderRadius: 2000.0,
                                                        margin:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    4.0,
                                                                    16.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 300.0,
                                                      height: 50.0,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              TextFormField(
                                                            controller: _model
                                                                .textController1,
                                                            focusNode: _model
                                                                .textFieldFocusNode1,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFFE3E3E3),
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                      ),
                                                              hintText:
                                                                  'Full Name',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        color: const Color(
                                                                            0xFFE3E3E3),
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Color(
                                                                      0xFFE3E3E3),
                                                                  width: 1.5,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2000.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Color(
                                                                      0xFFE3E3E3),
                                                                  width: 1.5,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2000.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.5,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2000.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.5,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2000.0),
                                                              ),
                                                              contentPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          25.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFFE3E3E3),
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            validator: _model
                                                                .textController1Validator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
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
                                                            'PATIENT_PROFILE_Image_7qx0zni5_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Image_validate_form');
                                                        if (_model.formKey5
                                                                    .currentState ==
                                                                null ||
                                                            !_model.formKey5
                                                                .currentState!
                                                                .validate()) {
                                                          return;
                                                        }
                                                        if (_model
                                                                .datePicked1 ==
                                                            null) {
                                                          return;
                                                        }
                                                        if (_model
                                                                .dropDownValue ==
                                                            null) {
                                                          return;
                                                        }
                                                        logFirebaseEvent(
                                                            'Image_backend_call');

                                                        await currentUserReference!
                                                            .update(
                                                                createUsersRecordData(
                                                          displayName: _model
                                                              .textController1
                                                              .text,
                                                          gender: _model
                                                              .dropDownValue,
                                                          patient: true,
                                                          dateofbirth: _model
                                                              .datePicked1,
                                                        ));
                                                        logFirebaseEvent(
                                                            'Image_page_view');
                                                        await _model
                                                            .pageViewController
                                                            ?.nextPage(
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  300),
                                                          curve: Curves.ease,
                                                        );
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/arrow-right-white.svg',
                                                          width: 40.0,
                                                          height: 40.0,
                                                          fit: BoxFit.cover,
                                                        ),
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
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    decoration: BoxDecoration(
                                      color: const Color(0x1EFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: const Color(0xBCF1F1F1),
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: ClipRect(
                                            child: ImageFiltered(
                                              imageFilter: ImageFilter.blur(
                                                sigmaX: 3.0,
                                                sigmaY: 3.0,
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'We found your therapist',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFFF4F2FF),
                                                          fontSize: 22.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 30.0, 0.0, 0.0),
                                                  child: FutureBuilder<
                                                      List<UsercodesRecord>>(
                                                    future:
                                                        queryUsercodesRecordOnce(
                                                      queryBuilder:
                                                          (usercodesRecord) =>
                                                              usercodesRecord
                                                                  .where(
                                                                    'email',
                                                                    isEqualTo:
                                                                        currentUserEmail,
                                                                  )
                                                                  .orderBy(
                                                                      'date',
                                                                      descending:
                                                                          true),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return const Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitRipple(
                                                              color: Color(
                                                                  0xFFB9DFFF),
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<UsercodesRecord>
                                                          containerUsercodesRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final containerUsercodesRecord =
                                                          containerUsercodesRecordList
                                                                  .isNotEmpty
                                                              ? containerUsercodesRecordList
                                                                  .first
                                                              : null;
                                                      return Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.3,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              const Color(0x00FFFFFF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0x00FFFFFF),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  20.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        containerUsercodesRecord!
                                                                            .therapist!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return const Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            SpinKitRipple(
                                                                          color:
                                                                              Color(0xFFB9DFFF),
                                                                          size:
                                                                              50.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;
                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            35.0,
                                                                        height:
                                                                            35.0,
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            const BoxDecoration(
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child: Image
                                                                            .network(
                                                                          rowUsersRecord
                                                                              .photoUrl,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                rowUsersRecord.displayName,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: const Color(0xFFF7F6FF),
                                                                                      fontSize: 18.0,
                                                                                      fontWeight: FontWeight.normal,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Private Practice',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xFFF4F2FF),
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        lineHeight: 1.5,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                child: Form(
                                                                                  key: _model.formKey4,
                                                                                  autovalidateMode: AutovalidateMode.disabled,
                                                                                  child: TextFormField(
                                                                                    controller: _model.textController2,
                                                                                    focusNode: _model.textFieldFocusNode2,
                                                                                    autofocus: true,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelText: 'Access Code',
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFFF4F2FF),
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                            color: const Color(0xFFF4F2FF),
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: const BorderSide(
                                                                                          color: Color(0xFFF4F2FF),
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: const BorderSide(
                                                                                          color: Color(0xFFF4F2FF),
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      errorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedErrorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    validator: _model.textController2Validator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    logFirebaseEvent('PATIENT_PROFILE_PAGE_CONFIRM_BTN_ON_TAP');
                                                                                    logFirebaseEvent('Button_validate_form');
                                                                                    if (_model.formKey4.currentState == null || !_model.formKey4.currentState!.validate()) {
                                                                                      return;
                                                                                    }
                                                                                    if (_model.textController2.text == containerUsercodesRecord.accesscode) {
                                                                                      logFirebaseEvent('Button_cloud_function');
                                                                                      try {
                                                                                        final result = await FirebaseFunctions.instance.httpsCallable('retrieveEditPatientDocRegistration').call({
                                                                                          "useremailinput": currentUserEmail,
                                                                                        });
                                                                                        _model.patientdocfound = RetrieveEditPatientDocRegistrationCloudFunctionCallResponse(
                                                                                          data: result.data,
                                                                                          succeeded: true,
                                                                                          resultAsString: result.data.toString(),
                                                                                          jsonBody: result.data,
                                                                                        );
                                                                                      } on FirebaseFunctionsException catch (error) {
                                                                                        _model.patientdocfound = RetrieveEditPatientDocRegistrationCloudFunctionCallResponse(
                                                                                          errorCode: error.code,
                                                                                          succeeded: false,
                                                                                        );
                                                                                      }

                                                                                      if (_model.patientdocfound!.data!) {
                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                        await currentUserReference!.update(createUsersRecordData(
                                                                                          assignedTherapist: containerUsercodesRecord.therapist,
                                                                                        ));
                                                                                        logFirebaseEvent('Button_page_view');
                                                                                        await _model.pageViewController?.nextPage(
                                                                                          duration: const Duration(milliseconds: 300),
                                                                                          curve: Curves.ease,
                                                                                        );
                                                                                      } else {
                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                        var patientDocumentsRecordReference = PatientDocumentsRecord.collection.doc();
                                                                                        await patientDocumentsRecordReference.set(createPatientDocumentsRecordData(
                                                                                          therapist: containerUsercodesRecord.therapist,
                                                                                          patient: currentUserReference,
                                                                                          name: currentUserDisplayName,
                                                                                          dateOfBirth: currentUserDocument?.dateofbirth,
                                                                                          gender: valueOrDefault(currentUserDocument?.gender, ''),
                                                                                          email: currentUserEmail,
                                                                                          consent: false,
                                                                                          createdTime: getCurrentTimestamp,
                                                                                        ));
                                                                                        _model.createdpatientdoc = PatientDocumentsRecord.getDocumentFromData(
                                                                                            createPatientDocumentsRecordData(
                                                                                              therapist: containerUsercodesRecord.therapist,
                                                                                              patient: currentUserReference,
                                                                                              name: currentUserDisplayName,
                                                                                              dateOfBirth: currentUserDocument?.dateofbirth,
                                                                                              gender: valueOrDefault(currentUserDocument?.gender, ''),
                                                                                              email: currentUserEmail,
                                                                                              consent: false,
                                                                                              createdTime: getCurrentTimestamp,
                                                                                            ),
                                                                                            patientDocumentsRecordReference);
                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                        await rowUsersRecord.reference.update({
                                                                                          ...mapToFirestore(
                                                                                            {
                                                                                              'patient_documents': FieldValue.arrayUnion([
                                                                                                _model.createdpatientdoc?.reference
                                                                                              ]),
                                                                                            },
                                                                                          ),
                                                                                        });
                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                        await currentUserReference!.update(createUsersRecordData(
                                                                                          assignedTherapist: containerUsercodesRecord.therapist,
                                                                                          patientDoc: _model.createdpatientdoc?.reference,
                                                                                        ));
                                                                                        logFirebaseEvent('Button_page_view');
                                                                                        await _model.pageViewController?.nextPage(
                                                                                          duration: const Duration(milliseconds: 300),
                                                                                          curve: Curves.ease,
                                                                                        );
                                                                                      }
                                                                                    } else {
                                                                                      logFirebaseEvent('Button_show_snack_bar');
                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                        SnackBar(
                                                                                          content: Text(
                                                                                            'Incorrect Passcode',
                                                                                            style: GoogleFonts.getFont(
                                                                                              'Manrope',
                                                                                              color: const Color(0xFFCFCFCF),
                                                                                            ),
                                                                                          ),
                                                                                          duration: const Duration(milliseconds: 4000),
                                                                                          backgroundColor: const Color(0xFF2C2C2C),
                                                                                        ),
                                                                                      );
                                                                                    }

                                                                                    setState(() {});
                                                                                  },
                                                                                  text: 'Confirm',
                                                                                  icon: const Icon(
                                                                                    Icons.check_sharp,
                                                                                    size: 15.0,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: const Color(0x00FFFFFF),
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFFF4F2FF),
                                                                                          fontSize: 14.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                        ),
                                                                                    elevation: 0.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Color(0xFFF4F2FF),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(10000.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: StreamBuilder<UsersRecord>(
                                    stream: UsersRecord.getDocument(
                                        currentUserReference!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return const Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitRipple(
                                              color: Color(0xFFB9DFFF),
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      final containerUsersRecord =
                                          snapshot.data!;
                                      return Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.4,
                                        decoration: BoxDecoration(
                                          color: const Color(0x1EFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: const Color(0xBCF1F1F1),
                                            width: 1.5,
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  1.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: ClipRect(
                                                child: ImageFiltered(
                                                  imageFilter: ImageFilter.blur(
                                                    sigmaX: 3.0,
                                                    sigmaY: 3.0,
                                                  ),
                                                  child: Container(
                                                    width: 100.0,
                                                    decoration: const BoxDecoration(
                                                      color: Color(0x00FFFFFF),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(30.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Review your Profile Information',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFFF4F2FF),
                                                                  fontSize:
                                                                      22.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  30.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              const Color(0x00FFFFFF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0x00FFFFFF),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  20.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    width: 40.0,
                                                                    height:
                                                                        40.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      containerUsersRecord
                                                                          .photoUrl,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          containerUsersRecord
                                                                              .displayName,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFFF5F5FF),
                                                                                fontSize: 20.0,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Registered patient since ${dateTimeFormat('relative', containerUsersRecord.createdTime)}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xC0ECEEFF),
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/gender-icon-person.svg',
                                                                                  width: 22.0,
                                                                                  height: 22.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  containerUsersRecord.gender,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xC0ECEEFF),
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/age-icon.svg',
                                                                                  width: 22.0,
                                                                                  height: 22.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  dateTimeFormat('yMd', containerUsersRecord.dateofbirth!),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xC0ECEEFF),
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/assigned-therapist.svg',
                                                                                  width: 22.0,
                                                                                  height: 22.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: StreamBuilder<UsersRecord>(
                                                                                  stream: UsersRecord.getDocument(containerUsersRecord.assignedTherapist!),
                                                                                  builder: (context, snapshot) {
                                                                                    // Customize what your widget looks like when it's loading.
                                                                                    if (!snapshot.hasData) {
                                                                                      return const Center(
                                                                                        child: SizedBox(
                                                                                          width: 50.0,
                                                                                          height: 50.0,
                                                                                          child: SpinKitRipple(
                                                                                            color: Color(0xFFB9DFFF),
                                                                                            size: 50.0,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    }
                                                                                    final textUsersRecord = snapshot.data!;
                                                                                    return Text(
                                                                                      '${textUsersRecord.displayName} is your therapist',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xC0ECEEFF),
                                                                                            fontSize: 14.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              30.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('PATIENT_PROFILE_PAGE_EDIT_BTN_ON_TAP');
                                                                                  logFirebaseEvent('Button_page_view');
                                                                                  await _model.pageViewController?.animateToPage(
                                                                                    0,
                                                                                    duration: const Duration(milliseconds: 500),
                                                                                    curve: Curves.ease,
                                                                                  );
                                                                                },
                                                                                text: 'Edit',
                                                                                icon: const Icon(
                                                                                  Icons.edit_outlined,
                                                                                  size: 18.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: 120.0,
                                                                                  height: 45.0,
                                                                                  padding: const EdgeInsets.all(0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: const Color(0x00FFFFFF),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: Colors.white,
                                                                                        fontSize: 14.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: const BorderSide(
                                                                                    color: Color(0xC2EBE9FF),
                                                                                    width: 1.5,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    logFirebaseEvent('PATIENT_PROFILE_PAGE_CONTINUE_BTN_ON_TAP');
                                                                                    logFirebaseEvent('Button_page_view');
                                                                                    await _model.pageViewController?.nextPage(
                                                                                      duration: const Duration(milliseconds: 300),
                                                                                      curve: Curves.ease,
                                                                                    );
                                                                                  },
                                                                                  text: 'Continue',
                                                                                  options: FFButtonOptions(
                                                                                    width: 120.0,
                                                                                    height: 45.0,
                                                                                    padding: const EdgeInsets.all(0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: const Color(0xBBF1F0FF),
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xA01F2269),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                        ),
                                                                                    elevation: 0.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Color(0x00FFFFFF),
                                                                                      width: 0.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
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
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    height: 600.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0x1EFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: const Color(0xBCF1F1F1),
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 600.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: ClipRect(
                                            child: ImageFiltered(
                                              imageFilter: ImageFilter.blur(
                                                sigmaX: 3.0,
                                                sigmaY: 3.0,
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                height: 600.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 600.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Data Consent Agreement',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFFF4F2FF),
                                                          fontSize: 22.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    height: 300.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0x00FFFFFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            const Color(0x00FFFFFF),
                                                      ),
                                                    ),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Purpose:\nThis agreement seeks your consent for the processing of your therapy session notes by Cognitiv.ly\'s intelligent language modeling software. The primary goal is to offer enhanced insights on symptomatology, progress, treatment, and diagnostics, amplifying the clinician\'s ability to provide effective care.\n\nPlatform Overview:\n\nTreatment and Diagnostic Generation: Cognitiv.ly interprets therapy notes to present potential diagnostic and treatment suggestions.\nInsights and Summaries: Our tool focuses on extracting critical insights and summaries from your notes, offering a real-time overview of symptomology.\nTranscription: With your explicit consent, session audio can be transcribed into professionally structured, insurance-compliant notes. This feature is accessible both on the web and via our mobile app, facilitating transcription wherever you are.\nPatient-Focused App:\n\nOur supplementary patient mobile app aims to capture real-time mental health data, thereby deepening the understanding of your well-being and refining care strategies.\n\nData Usage:\n\nYour data will be processed solely to generate insights that benefit your treatment. At no point will your personal details or therapy notes be sold, shared, or used outside the scope of this agreement without your direct consent.\n\nPrivacy & Security:\n\nWe uphold the highest standards of data privacy and security. Your notes and recordings are encrypted, and all processing is done with utmost confidentiality.\n\nYour Rights:\n\nTransparency: You have the right to know how your data is being used at all times.\nOpt-out: You can withdraw your consent at any point, ceasing further data processing.\nData Access: You can request a copy of all data processed and insights generated.\nConsent:\n\nBy agreeing, you consent to the processing of your therapy session notes as described above. This aims to empower both you and your therapist with AI-driven insights, supplementing—never replacing—your clinician\'s expertise.\n\n',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFFDEDCE9),
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Theme(
                                                        data: ThemeData(
                                                          checkboxTheme:
                                                              CheckboxThemeData(
                                                            visualDensity:
                                                                VisualDensity
                                                                    .compact,
                                                            materialTapTargetSize:
                                                                MaterialTapTargetSize
                                                                    .shrinkWrap,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.0),
                                                            ),
                                                          ),
                                                          unselectedWidgetColor:
                                                              const Color(0xFFD2DAEB),
                                                        ),
                                                        child: Checkbox(
                                                          value: _model
                                                                  .checkboxValue ??=
                                                              false,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() => _model
                                                                    .checkboxValue =
                                                                newValue!);
                                                          },
                                                          activeColor:
                                                              const Color(0xFF213364),
                                                          checkColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .info,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'I consent to the above terms',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFFF4F2FF),
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      logFirebaseEvent(
                                                          'PATIENT_PROFILE_PAGE_CONFIRM_BTN_ON_TAP');
                                                      if (_model
                                                          .checkboxValue!) {
                                                        logFirebaseEvent(
                                                            'Button_navigate_to');

                                                        context.pushNamed(
                                                            'PatientHome');
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Button_alert_dialog');
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Consent Required'),
                                                              content: const Text(
                                                                  'We require your consent in order to confirm registration'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: const Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      }
                                                    },
                                                    text: 'Confirm',
                                                    options: FFButtonOptions(
                                                      width: 120.0,
                                                      height: 45.0,
                                                      padding:
                                                          const EdgeInsets.all(0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: const Color(0xBBF1F0FF),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xA01F2269),
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                        width: 0.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
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
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                      ),
                    ],
                  ),
                ),
              ),
            if (responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            ))
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AuthUserStreamWidget(
                        builder: (context) => Text(
                          'Welcome to Cognitiv.ly, $currentUserDisplayName',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Manrope',
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w200,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation4']!),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'I\'m an assistant to you and your clinician in navigating therapy',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Manrope',
                                color: const Color(0xBDE6E6E6),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation5']!),
                      ),
                      Flexible(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.65,
                          decoration: const BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            child: PageView(
                              physics: const NeverScrollableScrollPhysics(),
                              controller: _model.pageviewMobileController ??=
                                  PageController(initialPage: 0),
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    decoration: BoxDecoration(
                                      color: const Color(0x1EFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: const Color(0xBCF1F1F1),
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: ClipRect(
                                            child: ImageFiltered(
                                              imageFilter: ImageFilter.blur(
                                                sigmaX: 3.0,
                                                sigmaY: 3.0,
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Form(
                                            key: _model.formKey2,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: Padding(
                                              padding: const EdgeInsets.all(30.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Let\'s Start with Some Basic Details',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFFF4F2FF),
                                                                fontSize: 22.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textOnPageLoadAnimation6']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'PATIENT_PROFILE_PAGE_DOBMobile_ON_TAP');
                                                        logFirebaseEvent(
                                                            'DOBMobile_date_time_picker');
                                                        final datePicked2Date =
                                                            await showDatePicker(
                                                          context: context,
                                                          initialDate:
                                                              getCurrentTimestamp,
                                                          firstDate:
                                                              getCurrentTimestamp,
                                                          lastDate:
                                                              DateTime(2050),
                                                          builder:
                                                              (context, child) {
                                                            return wrapInMaterialDatePickerTheme(
                                                              context,
                                                              child!,
                                                              headerBackgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              headerForegroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              headerTextStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                        fontSize:
                                                                            32.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                      ),
                                                              pickerBackgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              pickerForegroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              selectedDateTimeBackgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              selectedDateTimeForegroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              actionButtonForegroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              iconSize: 24.0,
                                                            );
                                                          },
                                                        );

                                                        if (datePicked2Date !=
                                                            null) {
                                                          safeSetState(() {
                                                            _model.datePicked2 =
                                                                DateTime(
                                                              datePicked2Date
                                                                  .year,
                                                              datePicked2Date
                                                                  .month,
                                                              datePicked2Date
                                                                  .day,
                                                            );
                                                          });
                                                        }
                                                      },
                                                      text: 'Date of Birth',
                                                      icon: const Icon(
                                                        Icons.calendar_today,
                                                        size: 15.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 50.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            const Color(0x00CCCCCC),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFFE3E3E3),
                                                                  fontSize:
                                                                      14.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily),
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFE9E9E9),
                                                          width: 1.5,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 150.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            const Color(0x00FFFFFF),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    2000.0),
                                                      ),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .dropdownMobileValueController ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        options: const [
                                                          'Woman',
                                                          'Man',
                                                          'Transgender Man',
                                                          'Transgender Woman',
                                                          'Non-Binary',
                                                          'Agender'
                                                        ],
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .dropdownMobileValue =
                                                                val),
                                                        width: 150.0,
                                                        height: 50.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFFE3E3E3),
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                        hintText: 'Gender',
                                                        icon: const Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color:
                                                              Color(0xFFE3E3E3),
                                                          size: 24.0,
                                                        ),
                                                        fillColor:
                                                            const Color(0x00FFFFFF),
                                                        elevation: 2.0,
                                                        borderColor:
                                                            const Color(0xFFE3E3E3),
                                                        borderWidth: 1.5,
                                                        borderRadius: 2000.0,
                                                        margin:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    4.0,
                                                                    16.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 300.0,
                                                      height: 50.0,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              TextFormField(
                                                            controller: _model
                                                                .displayNameMobileController,
                                                            focusNode: _model
                                                                .displayNameMobileFocusNode,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFFE3E3E3),
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                      ),
                                                              hintText:
                                                                  'Full Name',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        color: const Color(
                                                                            0xFFE3E3E3),
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Color(
                                                                      0xFFE3E3E3),
                                                                  width: 1.5,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2000.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Color(
                                                                      0xFFE3E3E3),
                                                                  width: 1.5,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2000.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.5,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2000.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.5,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2000.0),
                                                              ),
                                                              contentPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          25.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFFE3E3E3),
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            validator: _model
                                                                .displayNameMobileControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
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
                                                            'PATIENT_PROFILE_Image_own3d89w_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Image_validate_form');
                                                        if (_model.formKey2
                                                                    .currentState ==
                                                                null ||
                                                            !_model.formKey2
                                                                .currentState!
                                                                .validate()) {
                                                          return;
                                                        }
                                                        if (_model
                                                                .datePicked2 ==
                                                            null) {
                                                          return;
                                                        }
                                                        if (_model
                                                                .dropdownMobileValue ==
                                                            null) {
                                                          return;
                                                        }
                                                        logFirebaseEvent(
                                                            'Image_backend_call');

                                                        await currentUserReference!
                                                            .update(
                                                                createUsersRecordData(
                                                          displayName: _model
                                                              .displayNameMobileController
                                                              .text,
                                                          gender: _model
                                                              .dropdownMobileValue,
                                                          patient: true,
                                                          dateofbirth: _model
                                                              .datePicked2,
                                                        ));
                                                        logFirebaseEvent(
                                                            'Image_page_view');
                                                        await _model
                                                            .pageviewMobileController
                                                            ?.nextPage(
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  300),
                                                          curve: Curves.ease,
                                                        );
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/arrow-right-white.svg',
                                                          width: 40.0,
                                                          height: 40.0,
                                                          fit: BoxFit.cover,
                                                        ),
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
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    decoration: BoxDecoration(
                                      color: const Color(0x1EFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: const Color(0xBCF1F1F1),
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: ClipRect(
                                            child: ImageFiltered(
                                              imageFilter: ImageFilter.blur(
                                                sigmaX: 3.0,
                                                sigmaY: 3.0,
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Form(
                                            key: _model.formKey1,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: Padding(
                                              padding: const EdgeInsets.all(30.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Profile Picture',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFFF4F2FF),
                                                                fontSize: 22.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
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
                                                            'PATIENT_PROFILE_Badge_ad0q0jvr_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Badge_upload_media_to_firebase');
                                                        final selectedMedia =
                                                            await selectMediaWithSourceBottomSheet(
                                                          context: context,
                                                          allowPhoto: true,
                                                        );
                                                        if (selectedMedia !=
                                                                null &&
                                                            selectedMedia.every((m) =>
                                                                validateFileFormat(
                                                                    m.storagePath,
                                                                    context))) {
                                                          setState(() => _model
                                                                  .isDataUploading =
                                                              true);
                                                          var selectedUploadedFiles =
                                                              <FFUploadedFile>[];

                                                          var downloadUrls =
                                                              <String>[];
                                                          try {
                                                            selectedUploadedFiles =
                                                                selectedMedia
                                                                    .map((m) =>
                                                                        FFUploadedFile(
                                                                          name: m
                                                                              .storagePath
                                                                              .split('/')
                                                                              .last,
                                                                          bytes:
                                                                              m.bytes,
                                                                          height: m
                                                                              .dimensions
                                                                              ?.height,
                                                                          width: m
                                                                              .dimensions
                                                                              ?.width,
                                                                          blurHash:
                                                                              m.blurHash,
                                                                        ))
                                                                    .toList();

                                                            downloadUrls =
                                                                (await Future
                                                                        .wait(
                                                              selectedMedia.map(
                                                                (m) async =>
                                                                    await uploadData(
                                                                        m.storagePath,
                                                                        m.bytes),
                                                              ),
                                                            ))
                                                                    .where((u) =>
                                                                        u !=
                                                                        null)
                                                                    .map((u) =>
                                                                        u!)
                                                                    .toList();
                                                          } finally {
                                                            _model.isDataUploading =
                                                                false;
                                                          }
                                                          if (selectedUploadedFiles
                                                                      .length ==
                                                                  selectedMedia
                                                                      .length &&
                                                              downloadUrls
                                                                      .length ==
                                                                  selectedMedia
                                                                      .length) {
                                                            setState(() {
                                                              _model.uploadedLocalFile =
                                                                  selectedUploadedFiles
                                                                      .first;
                                                              _model.uploadedFileUrl =
                                                                  downloadUrls
                                                                      .first;
                                                            });
                                                          } else {
                                                            setState(() {});
                                                            return;
                                                          }
                                                        }
                                                      },
                                                      child: badges.Badge(
                                                        badgeContent: Text(
                                                          '+',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: Colors
                                                                    .white,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                              ),
                                                        ),
                                                        showBadge: true,
                                                        shape: badges
                                                            .BadgeShape.circle,
                                                        badgeColor:
                                                            const Color(0xFF131313),
                                                        elevation: 0.0,
                                                        padding:
                                                            const EdgeInsets.all(8.0),
                                                        position:
                                                            badges.BadgePosition
                                                                .topEnd(),
                                                        animationType: badges
                                                            .BadgeAnimationType
                                                            .scale,
                                                        toAnimate: false,
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 100.0,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              _model
                                                                  .uploadedFileUrl,
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/cognitivly-zrzv4f/assets/4bkaeepo41bo/casual-life-3d-profile-picture-of-person-in-glasses-and-orange-shirt.png',
                                                            ),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
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
                                                            'PATIENT_PROFILE_Image_c5nelhg8_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Image_backend_call');

                                                        await currentUserReference!
                                                            .update(
                                                                createUsersRecordData(
                                                          photoUrl: _model
                                                              .uploadedFileUrl,
                                                        ));
                                                        logFirebaseEvent(
                                                            'Image_page_view');
                                                        await _model
                                                            .pageviewMobileController
                                                            ?.nextPage(
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  300),
                                                          curve: Curves.ease,
                                                        );
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/arrow-right-white.svg',
                                                          width: 40.0,
                                                          height: 40.0,
                                                          fit: BoxFit.cover,
                                                        ),
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
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    decoration: BoxDecoration(
                                      color: const Color(0x1EFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: const Color(0xBCF1F1F1),
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: ClipRect(
                                            child: ImageFiltered(
                                              imageFilter: ImageFilter.blur(
                                                sigmaX: 3.0,
                                                sigmaY: 3.0,
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'We found your therapist',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFFF4F2FF),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 30.0, 0.0, 0.0),
                                                  child: FutureBuilder<
                                                      List<UsercodesRecord>>(
                                                    future:
                                                        queryUsercodesRecordOnce(
                                                      queryBuilder:
                                                          (usercodesRecord) =>
                                                              usercodesRecord
                                                                  .where(
                                                                    'email',
                                                                    isEqualTo:
                                                                        currentUserEmail,
                                                                  )
                                                                  .orderBy(
                                                                      'date',
                                                                      descending:
                                                                          true),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return const Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitRipple(
                                                              color: Color(
                                                                  0xFFB9DFFF),
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<UsercodesRecord>
                                                          containerUsercodesRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final containerUsercodesRecord =
                                                          containerUsercodesRecordList
                                                                  .isNotEmpty
                                                              ? containerUsercodesRecordList
                                                                  .first
                                                              : null;
                                                      return Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              const Color(0x00FFFFFF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0x00FFFFFF),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  20.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        containerUsercodesRecord!
                                                                            .therapist!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return const Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            SpinKitRipple(
                                                                          color:
                                                                              Color(0xFFB9DFFF),
                                                                          size:
                                                                              50.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;
                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            35.0,
                                                                        height:
                                                                            35.0,
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            const BoxDecoration(
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child: Image
                                                                            .network(
                                                                          rowUsersRecord
                                                                              .photoUrl,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                rowUsersRecord.displayName,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: const Color(0xFFF7F6FF),
                                                                                      fontSize: 18.0,
                                                                                      fontWeight: FontWeight.normal,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      lineHeight: 1.5,
                                                                                    ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Private Practice',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: const Color(0xFFF4F2FF),
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        lineHeight: 1.5,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                child: Form(
                                                                                  key: _model.formKey3,
                                                                                  autovalidateMode: AutovalidateMode.disabled,
                                                                                  child: TextFormField(
                                                                                    controller: _model.accessCodeMobileController,
                                                                                    focusNode: _model.accessCodeMobileFocusNode,
                                                                                    autofocus: true,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelText: 'Access Code',
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFFF4F2FF),
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                            color: const Color(0xFFF4F2FF),
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: const BorderSide(
                                                                                          color: Color(0xFFF4F2FF),
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: const BorderSide(
                                                                                          color: Color(0xFFF4F2FF),
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      errorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedErrorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 2.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    validator: _model.accessCodeMobileControllerValidator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    logFirebaseEvent('PATIENT_PROFILE_PAGE_CONFIRM_BTN_ON_TAP');
                                                                                    logFirebaseEvent('Button_validate_form');
                                                                                    if (_model.formKey3.currentState == null || !_model.formKey3.currentState!.validate()) {
                                                                                      return;
                                                                                    }
                                                                                    if (_model.textController2.text == containerUsercodesRecord.accesscode) {
                                                                                      logFirebaseEvent('Button_cloud_function');
                                                                                      try {
                                                                                        final result = await FirebaseFunctions.instance.httpsCallable('retrieveEditPatientDocRegistration').call({
                                                                                          "useremailinput": currentUserEmail,
                                                                                        });
                                                                                        _model.patientdocfoundmobile = RetrieveEditPatientDocRegistrationCloudFunctionCallResponse(
                                                                                          data: result.data,
                                                                                          succeeded: true,
                                                                                          resultAsString: result.data.toString(),
                                                                                          jsonBody: result.data,
                                                                                        );
                                                                                      } on FirebaseFunctionsException catch (error) {
                                                                                        _model.patientdocfoundmobile = RetrieveEditPatientDocRegistrationCloudFunctionCallResponse(
                                                                                          errorCode: error.code,
                                                                                          succeeded: false,
                                                                                        );
                                                                                      }

                                                                                      if (_model.patientdocfoundmobile!.data!) {
                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                        await currentUserReference!.update(createUsersRecordData(
                                                                                          assignedTherapist: containerUsercodesRecord.therapist,
                                                                                        ));
                                                                                        logFirebaseEvent('Button_page_view');
                                                                                        await _model.pageViewController?.nextPage(
                                                                                          duration: const Duration(milliseconds: 300),
                                                                                          curve: Curves.ease,
                                                                                        );
                                                                                      } else {
                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                        var patientDocumentsRecordReference = PatientDocumentsRecord.collection.doc();
                                                                                        await patientDocumentsRecordReference.set(createPatientDocumentsRecordData(
                                                                                          therapist: containerUsercodesRecord.therapist,
                                                                                          patient: currentUserReference,
                                                                                          name: currentUserDisplayName,
                                                                                          dateOfBirth: currentUserDocument?.dateofbirth,
                                                                                          gender: valueOrDefault(currentUserDocument?.gender, ''),
                                                                                          email: currentUserEmail,
                                                                                          consent: false,
                                                                                          createdTime: getCurrentTimestamp,
                                                                                        ));
                                                                                        _model.createdpatientdocmobile = PatientDocumentsRecord.getDocumentFromData(
                                                                                            createPatientDocumentsRecordData(
                                                                                              therapist: containerUsercodesRecord.therapist,
                                                                                              patient: currentUserReference,
                                                                                              name: currentUserDisplayName,
                                                                                              dateOfBirth: currentUserDocument?.dateofbirth,
                                                                                              gender: valueOrDefault(currentUserDocument?.gender, ''),
                                                                                              email: currentUserEmail,
                                                                                              consent: false,
                                                                                              createdTime: getCurrentTimestamp,
                                                                                            ),
                                                                                            patientDocumentsRecordReference);
                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                        await containerUsercodesRecord.therapist!.update({
                                                                                          ...mapToFirestore(
                                                                                            {
                                                                                              'patient_documents': FieldValue.arrayUnion([
                                                                                                _model.createdpatientdocmobile?.reference
                                                                                              ]),
                                                                                            },
                                                                                          ),
                                                                                        });
                                                                                        logFirebaseEvent('Button_backend_call');

                                                                                        await currentUserReference!.update(createUsersRecordData(
                                                                                          assignedTherapist: containerUsercodesRecord.therapist,
                                                                                          patientDoc: _model.createdpatientdocmobile?.reference,
                                                                                        ));
                                                                                        logFirebaseEvent('Button_page_view');
                                                                                        await _model.pageViewController?.nextPage(
                                                                                          duration: const Duration(milliseconds: 300),
                                                                                          curve: Curves.ease,
                                                                                        );
                                                                                      }
                                                                                    } else {
                                                                                      logFirebaseEvent('Button_show_snack_bar');
                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                        SnackBar(
                                                                                          content: Text(
                                                                                            'Incorrect Passcode',
                                                                                            style: GoogleFonts.getFont(
                                                                                              'Manrope',
                                                                                              color: const Color(0xFFCFCFCF),
                                                                                            ),
                                                                                          ),
                                                                                          duration: const Duration(milliseconds: 4000),
                                                                                          backgroundColor: const Color(0xFF2C2C2C),
                                                                                        ),
                                                                                      );
                                                                                    }

                                                                                    setState(() {});
                                                                                  },
                                                                                  text: 'Confirm',
                                                                                  icon: const Icon(
                                                                                    Icons.check_sharp,
                                                                                    size: 15.0,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: const Color(0x00FFFFFF),
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFFF4F2FF),
                                                                                          fontSize: 14.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                        ),
                                                                                    elevation: 0.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Color(0xFFF4F2FF),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(10000.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: StreamBuilder<UsersRecord>(
                                    stream: UsersRecord.getDocument(
                                        currentUserReference!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return const Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitRipple(
                                              color: Color(0xFFB9DFFF),
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }
                                      final containerUsersRecord =
                                          snapshot.data!;
                                      return Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.4,
                                        decoration: BoxDecoration(
                                          color: const Color(0x1EFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: const Color(0xBCF1F1F1),
                                            width: 1.5,
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  1.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: ClipRect(
                                                child: ImageFiltered(
                                                  imageFilter: ImageFilter.blur(
                                                    sigmaX: 3.0,
                                                    sigmaY: 3.0,
                                                  ),
                                                  child: Container(
                                                    width: 100.0,
                                                    decoration: const BoxDecoration(
                                                      color: Color(0x00FFFFFF),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(30.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Review your Profile Information',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFFF4F2FF),
                                                                  fontSize:
                                                                      22.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  30.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              const Color(0x00FFFFFF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0x00FFFFFF),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  20.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    width: 40.0,
                                                                    height:
                                                                        40.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      containerUsersRecord
                                                                          .photoUrl,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            containerUsersRecord.displayName,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFFF5F5FF),
                                                                                  fontSize: 20.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Registered patient since ${dateTimeFormat('relative', containerUsersRecord.createdTime)}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    color: const Color(0xC0ECEEFF),
                                                                                    fontSize: 12.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: SvgPicture.asset(
                                                                                    'assets/images/gender-icon-person.svg',
                                                                                    width: 22.0,
                                                                                    height: 22.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Male',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xC0ECEEFF),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: SvgPicture.asset(
                                                                                    'assets/images/age-icon.svg',
                                                                                    width: 22.0,
                                                                                    height: 22.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    '20 years old',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xC0ECEEFF),
                                                                                          fontSize: 14.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: SvgPicture.asset(
                                                                                    'assets/images/assigned-therapist.svg',
                                                                                    width: 22.0,
                                                                                    height: 22.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                    child: AuthUserStreamWidget(
                                                                                      builder: (context) => StreamBuilder<UsersRecord>(
                                                                                        stream: UsersRecord.getDocument(currentUserDocument!.assignedTherapist!),
                                                                                        builder: (context, snapshot) {
                                                                                          // Customize what your widget looks like when it's loading.
                                                                                          if (!snapshot.hasData) {
                                                                                            return const Center(
                                                                                              child: SizedBox(
                                                                                                width: 50.0,
                                                                                                height: 50.0,
                                                                                                child: SpinKitRipple(
                                                                                                  color: Color(0xFFB9DFFF),
                                                                                                  size: 50.0,
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                          final textUsersRecord = snapshot.data!;
                                                                                          return Text(
                                                                                            '${textUsersRecord.displayName} is your therapist',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Manrope',
                                                                                                  color: const Color(0xC0ECEEFF),
                                                                                                  fontSize: 14.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                30.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('PATIENT_PROFILE_Icon_3o1kuknn_ON_TAP');
                                                                                    logFirebaseEvent('Icon_page_view');
                                                                                    await _model.pageviewMobileController?.animateToPage(
                                                                                      0,
                                                                                      duration: const Duration(milliseconds: 500),
                                                                                      curve: Curves.ease,
                                                                                    );
                                                                                  },
                                                                                  child: const Icon(
                                                                                    Icons.edit_outlined,
                                                                                    color: Color(0xFFE1E3FE),
                                                                                    size: 22.0,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      logFirebaseEvent('PATIENT_PROFILE_PAGE_CONTINUE_BTN_ON_TAP');
                                                                                      logFirebaseEvent('Button_navigate_to');

                                                                                      context.pushNamed('PatientHome');
                                                                                    },
                                                                                    text: 'Continue',
                                                                                    options: FFButtonOptions(
                                                                                      width: 120.0,
                                                                                      height: 45.0,
                                                                                      padding: const EdgeInsets.all(0.0),
                                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: const Color(0xBBF1F0FF),
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xA01F2269),
                                                                                            fontSize: 14.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                          ),
                                                                                      elevation: 0.0,
                                                                                      borderSide: const BorderSide(
                                                                                        color: Color(0x00FFFFFF),
                                                                                        width: 0.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(5.0),
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
                                                                ],
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
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
