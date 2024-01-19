import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/components/add_patient_widget.dart';
import '/components/business_associate_agreement_widget.dart';
import '/components/compressed_menu_widget.dart';
import '/components/side_menu_widget.dart';
import '/components/sidemenu_web_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'patient_profiles_model.dart';
export 'patient_profiles_model.dart';

class PatientProfilesWidget extends StatefulWidget {
  const PatientProfilesWidget({super.key});

  @override
  _PatientProfilesWidgetState createState() => _PatientProfilesWidgetState();
}

class _PatientProfilesWidgetState extends State<PatientProfilesWidget> {
  late PatientProfilesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientProfilesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PatientProfiles'});
    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

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
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.sideMenuModel,
            updateCallback: () => setState(() {}),
            child: const SideMenuWidget(),
          ),
        ),
        endDrawer: SizedBox(
          width: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return (MediaQuery.sizeOf(context).width * 0.9);
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return (MediaQuery.sizeOf(context).width * 0.4);
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return (MediaQuery.sizeOf(context).width * .25);
            } else {
              return (MediaQuery.sizeOf(context).width * 0.3);
            }
          }(),
          child: Drawer(
            elevation: 16.0,
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'PATIENT_PROFILES_Image_2rcnn65y_ON_TAP');
                        logFirebaseEvent('Image_close_dialog,_drawer,_etc');
                        Navigator.pop(context);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/Left-Arrow-Narrow.svg',
                          width: 45.0,
                          height: 45.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 200.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 40.0),
                            child: PageView(
                              physics: const NeverScrollableScrollPhysics(),
                              controller: _model.pageViewController ??=
                                  PageController(initialPage: 0),
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'How would you like to add a patient?',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'You can add a patient manually or invite them to Cognitiv.ly to provide information',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                color: const Color(0xFF969696),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                                lineHeight: 1.5,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'PATIENT_PROFILES_Container_9tlfs523_ON_T');
                                            if (valueOrDefault(
                                                        currentUserDocument
                                                            ?.baaSignature,
                                                        '') !=
                                                    '') {
                                              logFirebaseEvent(
                                                  'Container_drawer');
                                              if (scaffoldKey.currentState!
                                                      .isDrawerOpen ||
                                                  scaffoldKey.currentState!
                                                      .isEndDrawerOpen) {
                                                Navigator.pop(context);
                                              }

                                              logFirebaseEvent(
                                                  'Container_bottom_sheet');
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    const Color(0x68000000),
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: SizedBox(
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                1.0,
                                                        child:
                                                            const AddPatientWidget(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            } else {
                                              logFirebaseEvent(
                                                  'Container_bottom_sheet');
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    const Color(0x2F000000),
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: SizedBox(
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                1.0,
                                                        child:
                                                            const BusinessAssociateAgreementWidget(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            }
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              border: Border.all(
                                                color: const Color(0xC4D1D4E9),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.bolt_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 14.0,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    2.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Get Started Fast',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF969696),
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                                lineHeight: 1.5,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 2.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Add Manually',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF646464),
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                                lineHeight: 1.5,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'I\'ll manually enter patient details, including name and contact information. Patient information can be edited later',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF969696),
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                                lineHeight: 1.8,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/Right-Arrow-Narrow.svg',
                                                        width: 24.0,
                                                        height: 24.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'PATIENT_PROFILES_Container_2dycdb2a_ON_T');
                                            if (valueOrDefault(
                                                        currentUserDocument
                                                            ?.baaSignature,
                                                        '') !=
                                                    '') {
                                              logFirebaseEvent(
                                                  'Container_page_view');
                                              await _model.pageViewController
                                                  ?.nextPage(
                                                duration:
                                                    const Duration(milliseconds: 300),
                                                curve: Curves.ease,
                                              );
                                            } else {
                                              logFirebaseEvent(
                                                  'Container_bottom_sheet');
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    const Color(0x2F000000),
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: SizedBox(
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                1.0,
                                                        child:
                                                            const BusinessAssociateAgreementWidget(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            }
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              border: Border.all(
                                                color: const Color(0xC4D1D4E9),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.access_time_sharp,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 14.0,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    2.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Requires Patient Registration',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF969696),
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                                lineHeight: 1.5,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 2.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Add via Invitation',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF646464),
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                                lineHeight: 1.5,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'I\'ll invite a patient\'s email to join Cognitiv.ly and register an account via a unique access code',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: const Color(
                                                                    0xFF969696),
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                                lineHeight: 1.8,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/Right-Arrow-Narrow.svg',
                                                        width: 24.0,
                                                        height: 24.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'Invite a Client to Your Practice',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 30.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'We\'ll send a unique access code to your patient\'s email below for them to sign up and provide consent',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF969696),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ),
                                    Form(
                                      key: _model.formKey,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                          child: TextFormField(
                                            controller: _model.textController3,
                                            focusNode:
                                                _model.textFieldFocusNode3,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'name@email.com',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily),
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily),
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFF646464),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  color: const Color(0xFF646464),
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                            validator: _model
                                                .textController3Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'PATIENT_PROFILES_CONTINUE_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_validate_form');
                                          if (_model.formKey.currentState ==
                                                  null ||
                                              !_model.formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                          logFirebaseEvent(
                                              'Button_update_app_state');
                                          setState(() {
                                            FFAppState().accesstempcode =
                                                random_data.randomString(
                                              10,
                                              10,
                                              true,
                                              false,
                                              true,
                                            );
                                          });
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          var usercodesRecordReference =
                                              UsercodesRecord.collection.doc();
                                          await usercodesRecordReference
                                              .set(createUsercodesRecordData(
                                            email: _model.textController3.text,
                                            accesscode:
                                                FFAppState().accesstempcode,
                                            therapist: currentUserReference,
                                            date: getCurrentTimestamp,
                                          ));
                                          _model.aPIRef = UsercodesRecord
                                              .getDocumentFromData(
                                                  createUsercodesRecordData(
                                                    email: _model
                                                        .textController3.text,
                                                    accesscode: FFAppState()
                                                        .accesstempcode,
                                                    therapist:
                                                        currentUserReference,
                                                    date: getCurrentTimestamp,
                                                  ),
                                                  usercodesRecordReference);
                                          logFirebaseEvent(
                                              'Button_backend_call');
                                          await SecurityEmailsCall.call(
                                            subject:
                                                'Your Cognitiv.ly Passcode',
                                            emailBody:
                                                'Hi there! Your practitioner $currentUserDisplayName is requesting that you join Cognitiv.ly\'s web platform to better streamline patient documentation. You can register a patient account at https://cognitivly-zrzv4f.flutterflow.app/registration Your Passcode is ${FFAppState().accesstempcode}. Keep this code safe and do not share it with anyone.',
                                            recipient:
                                                _model.textController3.text,
                                          );
                                          logFirebaseEvent('Button_page_view');
                                          await _model.pageViewController
                                              ?.nextPage(
                                            duration:
                                                const Duration(milliseconds: 300),
                                            curve: Curves.ease,
                                          );

                                          setState(() {});
                                        },
                                        text: 'Continue',
                                        icon: const Icon(
                                          Icons.arrow_right_alt,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 150.0,
                                          height: 60.0,
                                          padding: const EdgeInsets.all(0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFF2B2B2B),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: Colors.white,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily),
                                                  ),
                                          elevation: 0.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                StreamBuilder<List<UsercodesRecord>>(
                                  stream: queryUsercodesRecord(
                                    queryBuilder: (usercodesRecord) =>
                                        usercodesRecord
                                            .where(
                                              'therapist',
                                              isEqualTo: currentUserReference,
                                            )
                                            .orderBy('date', descending: true),
                                    singleRecord: true,
                                  ),
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
                                    List<UsercodesRecord>
                                        listViewUsercodesRecordList =
                                        snapshot.data!;
                                    final listViewUsercodesRecord =
                                        listViewUsercodesRecordList.isNotEmpty
                                            ? listViewUsercodesRecordList.first
                                            : null;
                                    return ListView(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            'Access Code Sent',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  color: const Color(0xFF646464),
                                                  fontSize: 30.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                  lineHeight: 1.5,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            'Your patient will appear in your patient list once they\'ve confirmed the invitation',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  color: const Color(0xFF969696),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                  lineHeight: 1.5,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: SelectionArea(
                                                    child: Text(
                                                  valueOrDefault<String>(
                                                    listViewUsercodesRecord
                                                        ?.accesscode,
                                                    'no access code found',
                                                  ),
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color:
                                                            const Color(0xFF646464),
                                                        fontSize: 20.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                        lineHeight: 1.5,
                                                      ),
                                                )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
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
                                                        'PATIENT_PROFILES_Icon_ebtonxq5_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Icon_copy_to_clipboard');
                                                    await Clipboard.setData(
                                                        ClipboardData(
                                                            text: listViewUsercodesRecord!
                                                                .accesscode));
                                                    logFirebaseEvent(
                                                        'Icon_show_snack_bar');
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Access Code Copied',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: const Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    );
                                                  },
                                                  child: const Icon(
                                                    Icons.copy_all_sharp,
                                                    color: Color(0xFF919191),
                                                    size: 22.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'PATIENT_PROFILES_PAGE_DONE_BTN_ON_TAP');
                                              logFirebaseEvent(
                                                  'Button_close_dialog,_drawer,_etc');
                                              Navigator.pop(context);
                                            },
                                            text: 'Done',
                                            icon: const Icon(
                                              Icons.check_sharp,
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: 150.0,
                                              height: 50.0,
                                              padding: const EdgeInsets.all(0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF2B2B2B),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color: Colors.white,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.sidemenuWebModel,
                    updateCallback: () => setState(() {}),
                    child: const SidemenuWebWidget(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 50.0, 20.0, 20.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Patient Profiles',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.w300,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          'Intelligent, evolving, and informative patient profiles all in one place',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                color: const Color(0xFF969696),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: StreamBuilder<
                                        List<PatientDocumentsRecord>>(
                                      stream: FFAppState().patientnotesprofiles(
                                        requestFn: () =>
                                            queryPatientDocumentsRecord(
                                          queryBuilder:
                                              (patientDocumentsRecord) =>
                                                  patientDocumentsRecord
                                                      .where(
                                                        'therapist',
                                                        isEqualTo:
                                                            currentUserReference,
                                                      )
                                                      .orderBy('name'),
                                        ),
                                      ),
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
                                        List<PatientDocumentsRecord>
                                            textFieldPatientDocumentsRecordList =
                                            snapshot.data!;
                                        return SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.4,
                                          child: TextFormField(
                                            controller: _model.textController1,
                                            focusNode:
                                                _model.textFieldFocusNode1,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textController1',
                                              const Duration(milliseconds: 2000),
                                              () async {
                                                logFirebaseEvent(
                                                    'PATIENT_PROFILES_TextField_cilasebv_ON_T');
                                                logFirebaseEvent(
                                                    'TextField_simple_search');
                                                safeSetState(() {
                                                  _model.simpleSearchResults1 =
                                                      TextSearch(
                                                    textFieldPatientDocumentsRecordList
                                                        .map(
                                                          (record) =>
                                                              TextSearchItem
                                                                  .fromTerms(
                                                                      record, [
                                                            record.name,
                                                            record.email]),
                                                        )
                                                        .toList(),
                                                  )
                                                          .search(_model
                                                              .textController1
                                                              .text)
                                                          .map((r) => r.object)
                                                          .take(10)
                                                          .toList();
                                                });
                                              },
                                            ),
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Search Patient Profiles',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: const Color(0xFFA5A5A5),
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMediumFamily),
                                                  ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC1C1C1),
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2000.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFC0C0C0),
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2000.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2000.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2000.0),
                                              ),
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(30.0, 23.0,
                                                          30.0, 23.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  color: const Color(0xFF646464),
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                            validator: _model
                                                .textController1Validator
                                                .asValidator(context),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'PATIENT_PROFILES_ADD_PATIENT_BTN_ON_TAP');
                                        logFirebaseEvent('Button_drawer');
                                        scaffoldKey.currentState!
                                            .openEndDrawer();
                                      },
                                      text: 'Add Patient',
                                      icon: const Icon(
                                        Icons.add_sharp,
                                        size: 20.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 60.0,
                                        padding: const EdgeInsets.all(20.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: const Color(0xFF646464),
                                              fontSize: 14.0,
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
                                          color: Color(0xFFE0E4ED),
                                          width: 1.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: [
                                    if (_model.textController1.text == '')
                                      StreamBuilder<
                                          List<PatientDocumentsRecord>>(
                                        stream: queryPatientDocumentsRecord(
                                          queryBuilder:
                                              (patientDocumentsRecord) =>
                                                  patientDocumentsRecord
                                                      .where(
                                                        'therapist',
                                                        isEqualTo:
                                                            currentUserReference,
                                                      )
                                                      .orderBy('name'),
                                        ),
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
                                          List<PatientDocumentsRecord>
                                              searchpatientprofileinactivePatientDocumentsRecordList =
                                              snapshot.data!;
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                searchpatientprofileinactivePatientDocumentsRecordList
                                                    .length,
                                            itemBuilder: (context,
                                                searchpatientprofileinactiveIndex) {
                                              final searchpatientprofileinactivePatientDocumentsRecord =
                                                  searchpatientprofileinactivePatientDocumentsRecordList[
                                                      searchpatientprofileinactiveIndex];
                                              return Padding(
                                                padding: const EdgeInsets.all(15.0),
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
                                                        'PATIENT_PROFILES_Container_x40thq2b_ON_T');
                                                    if (searchpatientprofileinactivePatientDocumentsRecord
                                                        .profileGeneration) {
                                                      logFirebaseEvent(
                                                          'Container_navigate_to');

                                                      context.pushNamed(
                                                        'PatientDashboardProfile',
                                                        queryParameters: {
                                                          'patientdoc':
                                                              serializeParam(
                                                            searchpatientprofileinactivePatientDocumentsRecord,
                                                            ParamType.Document,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          'patientdoc':
                                                              searchpatientprofileinactivePatientDocumentsRecord,
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    } else {
                                                      logFirebaseEvent(
                                                          'Container_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'Smart Profile Not Generated Yet'),
                                                            content: const Text(
                                                                'You can only view this profile once you generate smart insights. Click "Update Profile" to begin'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    const Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 0.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    child: Container(
                                                      width: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 20.0,
                                                            color: Color(
                                                                0xCCE5E8F3),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            25.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .insights_sharp,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 16.0,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    searchpatientprofileinactivePatientDocumentsRecord
                                                                            .profileGeneration
                                                                        ? 'AI-Driven Profile'
                                                                        : 'Smart Insights Not Generated Yet',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              const Color(0xFF969696),
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                searchpatientprofileinactivePatientDocumentsRecord
                                                                    .name,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF646464),
                                                                      fontSize:
                                                                          16.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  searchpatientprofileinactivePatientDocumentsRecord
                                                                      .rollingInsights,
                                                                  'Rolling insights have not been generated for this patient yet. Update this profile to begin viewing intelligent insights',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF969696),
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      lineHeight:
                                                                          1.5,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  FutureBuilder<
                                                                      int>(
                                                                    future:
                                                                        querySessionNotesRecordCount(
                                                                      queryBuilder: (sessionNotesRecord) => sessionNotesRecord
                                                                          .where(
                                                                            'user',
                                                                            isEqualTo:
                                                                                currentUserReference,
                                                                          )
                                                                          .where(
                                                                            'patient_document',
                                                                            isEqualTo:
                                                                                searchpatientprofileinactivePatientDocumentsRecord.reference,
                                                                          ),
                                                                    ),
                                                                    builder:
                                                                        (context,
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
                                                                              color: Color(0xFFB9DFFF),
                                                                              size: 50.0,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      int buttonCount =
                                                                          snapshot
                                                                              .data!;
                                                                      return FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'PATIENT_PROFILES_UPDATE_PROFILE_BTN_ON_T');
                                                                          var shouldSetState =
                                                                              false;
                                                                          if (buttonCount >
                                                                              1) {
                                                                            logFirebaseEvent('Button_update_app_state');
                                                                            setState(() {
                                                                              FFAppState().profilegenerating = true;
                                                                            });
                                                                            logFirebaseEvent('Button_cloud_function');
                                                                            try {
                                                                              final result = await FirebaseFunctions.instance.httpsCallable('getSessionNotes').call({
                                                                                "docid": searchpatientprofileinactivePatientDocumentsRecord.reference.id,
                                                                              });
                                                                              _model.cloudFunctionhnv = GetSessionNotesCloudFunctionCallResponse(
                                                                                data: result.data,
                                                                                succeeded: true,
                                                                                resultAsString: result.data.toString(),
                                                                                jsonBody: result.data,
                                                                              );
                                                                            } on FirebaseFunctionsException catch (error) {
                                                                              _model.cloudFunctionhnv = GetSessionNotesCloudFunctionCallResponse(
                                                                                errorCode: error.code,
                                                                                succeeded: false,
                                                                              );
                                                                            }

                                                                            shouldSetState =
                                                                                true;
                                                                            if (_model.cloudFunctionhnv!.succeeded!) {
                                                                              logFirebaseEvent('Button_backend_call');

                                                                              await searchpatientprofileinactivePatientDocumentsRecord.reference.update(createPatientDocumentsRecordData(
                                                                                rawRollingText: _model.cloudFunctionhnv?.data,
                                                                              ));
                                                                              logFirebaseEvent('Button_backend_call');
                                                                              _model.apiResultpab = await LastThreeSessionSummaryCall.call(
                                                                                therapynote: functions.replaceLineBreaks(functions.replaceDoubleQuotesLines(_model.cloudFunctionhnv?.resultAsString)),
                                                                              );
                                                                              shouldSetState = true;
                                                                              if ((_model.apiResultpab?.succeeded ?? true)) {
                                                                                logFirebaseEvent('Button_backend_call');

                                                                                await searchpatientprofileinactivePatientDocumentsRecord.reference.update(createPatientDocumentsRecordData(
                                                                                  rollingInsights: LastThreeSessionSummaryCall.cummulativeinsights(
                                                                                    (_model.apiResultpab?.jsonBody ?? ''),
                                                                                  ),
                                                                                  profileGeneration: true,
                                                                                  profileGenerationTime: getCurrentTimestamp,
                                                                                ));
                                                                                logFirebaseEvent('Button_backend_call');
                                                                                _model.apiResultpww = await CummulativeDSMCall.call(
                                                                                  therapynote: functions.replaceLineBreaks(functions.replaceDoubleQuotesLines(_model.cloudFunctionhnv?.data)),
                                                                                );
                                                                                shouldSetState = true;
                                                                                if ((_model.apiResultpww?.succeeded ?? true)) {
                                                                                  logFirebaseEvent('Button_backend_call');

                                                                                  await searchpatientprofileinactivePatientDocumentsRecord.reference.update(createPatientDocumentsRecordData(
                                                                                    dSM5Insights: CummulativeDSMCall.noteshypotheses(
                                                                                      (_model.apiResultpww?.jsonBody ?? ''),
                                                                                    ).toString(),
                                                                                  ));
                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                  _model.apiResult1b5 = await TopPresentingConcernsCall.call(
                                                                                    therapynote: functions.replaceLineBreaks(functions.replaceDoubleQuotesLines(_model.cloudFunctionhnv?.data)),
                                                                                  );
                                                                                  shouldSetState = true;
                                                                                  if ((_model.apiResult1b5?.succeeded ?? true)) {
                                                                                    logFirebaseEvent('Button_backend_call');

                                                                                    await searchpatientprofileinactivePatientDocumentsRecord.reference.update(createPatientDocumentsRecordData(
                                                                                      presentingConcerns: TopPresentingConcernsCall.cummulativeinsights(
                                                                                        (_model.apiResult1b5?.jsonBody ?? ''),
                                                                                      ),
                                                                                    ));
                                                                                  } else {
                                                                                    logFirebaseEvent('Button_show_snack_bar');
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Failed to assess presenting concerns',
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Manrope',
                                                                                            color: const Color(0xFFE1E1E1),
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                        ),
                                                                                        duration: const Duration(milliseconds: 4000),
                                                                                        backgroundColor: const Color(0xFF2F2F2F),
                                                                                      ),
                                                                                    );
                                                                                  }

                                                                                  logFirebaseEvent('Button_update_app_state');
                                                                                  setState(() {
                                                                                    FFAppState().profilegenerating = false;
                                                                                  });
                                                                                  logFirebaseEvent('Button_navigate_to');

                                                                                  context.pushNamed(
                                                                                    'PatientDashboardProfile',
                                                                                    queryParameters: {
                                                                                      'patientdoc': serializeParam(
                                                                                        searchpatientprofileinactivePatientDocumentsRecord,
                                                                                        ParamType.Document,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                    extra: <String, dynamic>{
                                                                                      'patientdoc': searchpatientprofileinactivePatientDocumentsRecord,
                                                                                      kTransitionInfoKey: const TransitionInfo(
                                                                                        hasTransition: true,
                                                                                        transitionType: PageTransitionType.fade,
                                                                                        duration: Duration(milliseconds: 0),
                                                                                      ),
                                                                                    },
                                                                                  );
                                                                                } else {
                                                                                  logFirebaseEvent('Button_show_snack_bar');
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Failed to analyze DSM coding',
                                                                                        style: GoogleFonts.getFont(
                                                                                          'Manrope',
                                                                                          color: const Color(0xFFE1E1E1),
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                      ),
                                                                                      duration: const Duration(milliseconds: 4000),
                                                                                      backgroundColor: const Color(0xFF2F2F2F),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                              } else {
                                                                                logFirebaseEvent('Button_show_snack_bar');
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Failed to analyze cummulative notes',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Manrope',
                                                                                        color: const Color(0xFFE1E1E1),
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                    ),
                                                                                    duration: const Duration(milliseconds: 4000),
                                                                                    backgroundColor: const Color(0xFF2F2F2F),
                                                                                  ),
                                                                                );
                                                                              }
                                                                            } else {
                                                                              if (shouldSetState) {
                                                                                setState(() {});
                                                                              }
                                                                              return;
                                                                            }
                                                                          } else {
                                                                            logFirebaseEvent('Button_alert_dialog');
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: const Text('Insufficient Session Data'),
                                                                                  content: const Text('At least two notes are needed for this patient in order to construct trends'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: const Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                          }

                                                                          if (shouldSetState) {
                                                                            setState(() {});
                                                                          }
                                                                        },
                                                                        text:
                                                                            'Update Profile',
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .auto_fix_high_outlined,
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          height:
                                                                              40.0,
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              24.0,
                                                                              0.0,
                                                                              24.0,
                                                                              0.0),
                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              Colors.white,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF646464),
                                                                                fontSize: 12.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                              ),
                                                                          elevation:
                                                                              0.0,
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0xFFD2DBE9),
                                                                            width:
                                                                                1.5,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                  if (searchpatientprofileinactivePatientDocumentsRecord
                                                                          .profileGeneration ==
                                                                      true)
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'PATIENT_PROFILES_Container_sdm8k1dp_ON_T');
                                                                          logFirebaseEvent(
                                                                              'Container_navigate_to');

                                                                          context
                                                                              .pushNamed(
                                                                            'PatientDashboardProfile',
                                                                            queryParameters:
                                                                                {
                                                                              'patientdoc': serializeParam(
                                                                                searchpatientprofileinactivePatientDocumentsRecord,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'patientdoc': searchpatientprofileinactivePatientDocumentsRecord,
                                                                              kTransitionInfoKey: const TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                                duration: Duration(milliseconds: 0),
                                                                              ),
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              200.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: const Color(0xFFC1CBDB),
                                                                              width: 1.2,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(15.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Icon(
                                                                                  Icons.access_time_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 18.0,
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'View Most Recent Profile',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: const Color(0xFF646464),
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Generated ${dateTimeFormat('relative', searchpatientprofileinactivePatientDocumentsRecord.lastupdated)}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: const Color(0xFF969696),
                                                                                                fontSize: 10.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    if (_model.textController1.text != '')
                                      Builder(
                                        builder: (context) {
                                          final searchpatientprofiles = _model
                                              .simpleSearchResults1
                                              .toList();
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                searchpatientprofiles.length,
                                            itemBuilder: (context,
                                                searchpatientprofilesIndex) {
                                              final searchpatientprofilesItem =
                                                  searchpatientprofiles[
                                                      searchpatientprofilesIndex];
                                              return Padding(
                                                padding: const EdgeInsets.all(15.0),
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
                                                        'PATIENT_PROFILES_Container_yw2a7cpm_ON_T');
                                                    if (searchpatientprofilesItem
                                                        .profileGeneration) {
                                                      logFirebaseEvent(
                                                          'Container_navigate_to');

                                                      context.pushNamed(
                                                        'PatientDashboardProfile',
                                                        queryParameters: {
                                                          'patientdoc':
                                                              serializeParam(
                                                            searchpatientprofilesItem,
                                                            ParamType.Document,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          'patientdoc':
                                                              searchpatientprofilesItem,
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    } else {
                                                      logFirebaseEvent(
                                                          'Container_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'Smart Profile Not Generated Yet'),
                                                            content: const Text(
                                                                'You can only view this profile once you generate smart insights. Click "Update Profile" to begin'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    const Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 0.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    child: Container(
                                                      width: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 20.0,
                                                            color: Color(
                                                                0xCCE5E8F3),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            25.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .insights_sharp,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 16.0,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    searchpatientprofilesItem
                                                                            .profileGeneration
                                                                        ? 'AI-Driven Profile'
                                                                        : 'Smart Insights Not Generated Yet',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          color:
                                                                              const Color(0xFF969696),
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                searchpatientprofilesItem
                                                                    .name,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF646464),
                                                                      fontSize:
                                                                          16.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                searchpatientprofilesItem
                                                                    .rollingInsights,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF969696),
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      lineHeight:
                                                                          1.5,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  FutureBuilder<
                                                                      int>(
                                                                    future:
                                                                        querySessionNotesRecordCount(
                                                                      queryBuilder: (sessionNotesRecord) => sessionNotesRecord
                                                                          .where(
                                                                            'user',
                                                                            isEqualTo:
                                                                                currentUserReference,
                                                                          )
                                                                          .where(
                                                                            'patient_document',
                                                                            isEqualTo:
                                                                                searchpatientprofilesItem.reference,
                                                                          ),
                                                                    ),
                                                                    builder:
                                                                        (context,
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
                                                                              color: Color(0xFFB9DFFF),
                                                                              size: 50.0,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      int buttonCount =
                                                                          snapshot
                                                                              .data!;
                                                                      return FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'PATIENT_PROFILES_UPDATE_PROFILE_BTN_ON_T');
                                                                          var shouldSetState =
                                                                              false;
                                                                          if (buttonCount >
                                                                              1) {
                                                                            logFirebaseEvent('Button_update_app_state');
                                                                            setState(() {
                                                                              FFAppState().profilegenerating = true;
                                                                            });
                                                                            logFirebaseEvent('Button_cloud_function');
                                                                            try {
                                                                              final result = await FirebaseFunctions.instance.httpsCallable('getSessionNotes').call({
                                                                                "docid": searchpatientprofilesItem.reference.id,
                                                                              });
                                                                              _model.cloudFunctionhnvsearch = GetSessionNotesCloudFunctionCallResponse(
                                                                                data: result.data,
                                                                                succeeded: true,
                                                                                resultAsString: result.data.toString(),
                                                                                jsonBody: result.data,
                                                                              );
                                                                            } on FirebaseFunctionsException catch (error) {
                                                                              _model.cloudFunctionhnvsearch = GetSessionNotesCloudFunctionCallResponse(
                                                                                errorCode: error.code,
                                                                                succeeded: false,
                                                                              );
                                                                            }

                                                                            shouldSetState =
                                                                                true;
                                                                            if (_model.cloudFunctionhnvsearch!.succeeded!) {
                                                                              logFirebaseEvent('Button_backend_call');

                                                                              await searchpatientprofilesItem.reference.update(createPatientDocumentsRecordData(
                                                                                rawRollingText: _model.cloudFunctionhnvsearch?.data,
                                                                              ));
                                                                              logFirebaseEvent('Button_backend_call');
                                                                              _model.apiResultpabsearch = await LastThreeSessionSummaryCall.call(
                                                                                therapynote: functions.replaceLineBreaks(functions.replaceDoubleQuotesLines(_model.cloudFunctionhnvsearch?.resultAsString)),
                                                                              );
                                                                              shouldSetState = true;
                                                                              if ((_model.apiResultpabsearch?.succeeded ?? true)) {
                                                                                logFirebaseEvent('Button_backend_call');

                                                                                await searchpatientprofilesItem.reference.update(createPatientDocumentsRecordData(
                                                                                  rollingInsights: LastThreeSessionSummaryCall.cummulativeinsights(
                                                                                    (_model.apiResultpabsearch?.jsonBody ?? ''),
                                                                                  ),
                                                                                  profileGeneration: true,
                                                                                  profileGenerationTime: getCurrentTimestamp,
                                                                                ));
                                                                                logFirebaseEvent('Button_backend_call');
                                                                                _model.apiResultpwwsearch = await CummulativeDSMCall.call(
                                                                                  therapynote: functions.replaceLineBreaks(functions.replaceDoubleQuotesLines(_model.cloudFunctionhnvsearch?.data)),
                                                                                );
                                                                                shouldSetState = true;
                                                                                if ((_model.apiResultpwwsearch?.succeeded ?? true)) {
                                                                                  logFirebaseEvent('Button_backend_call');

                                                                                  await searchpatientprofilesItem.reference.update(createPatientDocumentsRecordData(
                                                                                    dSM5Insights: CummulativeDSMCall.noteshypotheses(
                                                                                      (_model.apiResultpwwsearch?.jsonBody ?? ''),
                                                                                    ).toString(),
                                                                                  ));
                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                  _model.apiResult1b5search = await TopPresentingConcernsCall.call(
                                                                                    therapynote: functions.replaceLineBreaks(functions.replaceDoubleQuotesLines(_model.cloudFunctionhnvsearch?.data)),
                                                                                  );
                                                                                  shouldSetState = true;
                                                                                  if ((_model.apiResult1b5search?.succeeded ?? true)) {
                                                                                    logFirebaseEvent('Button_backend_call');

                                                                                    await searchpatientprofilesItem.reference.update(createPatientDocumentsRecordData(
                                                                                      presentingConcerns: TopPresentingConcernsCall.cummulativeinsights(
                                                                                        (_model.apiResult1b5search?.jsonBody ?? ''),
                                                                                      ),
                                                                                    ));
                                                                                  } else {
                                                                                    logFirebaseEvent('Button_show_snack_bar');
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Failed to assess presenting concerns',
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Manrope',
                                                                                            color: const Color(0xFFE1E1E1),
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                        ),
                                                                                        duration: const Duration(milliseconds: 4000),
                                                                                        backgroundColor: const Color(0xFF2F2F2F),
                                                                                      ),
                                                                                    );
                                                                                  }

                                                                                  logFirebaseEvent('Button_update_app_state');
                                                                                  setState(() {
                                                                                    FFAppState().profilegenerating = false;
                                                                                  });
                                                                                  logFirebaseEvent('Button_navigate_to');

                                                                                  context.pushNamed(
                                                                                    'PatientDashboardProfile',
                                                                                    queryParameters: {
                                                                                      'patientdoc': serializeParam(
                                                                                        searchpatientprofilesItem,
                                                                                        ParamType.Document,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                    extra: <String, dynamic>{
                                                                                      'patientdoc': searchpatientprofilesItem,
                                                                                      kTransitionInfoKey: const TransitionInfo(
                                                                                        hasTransition: true,
                                                                                        transitionType: PageTransitionType.fade,
                                                                                        duration: Duration(milliseconds: 0),
                                                                                      ),
                                                                                    },
                                                                                  );
                                                                                } else {
                                                                                  logFirebaseEvent('Button_show_snack_bar');
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Failed to analyze DSM coding',
                                                                                        style: GoogleFonts.getFont(
                                                                                          'Manrope',
                                                                                          color: const Color(0xFFE1E1E1),
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                      ),
                                                                                      duration: const Duration(milliseconds: 4000),
                                                                                      backgroundColor: const Color(0xFF2F2F2F),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                              } else {
                                                                                logFirebaseEvent('Button_show_snack_bar');
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Failed to analyze cummulative notes',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Manrope',
                                                                                        color: const Color(0xFFE1E1E1),
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                    ),
                                                                                    duration: const Duration(milliseconds: 4000),
                                                                                    backgroundColor: const Color(0xFF2F2F2F),
                                                                                  ),
                                                                                );
                                                                              }
                                                                            } else {
                                                                              if (shouldSetState) {
                                                                                setState(() {});
                                                                              }
                                                                              return;
                                                                            }
                                                                          } else {
                                                                            logFirebaseEvent('Button_alert_dialog');
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: const Text('Insufficient Session Data'),
                                                                                  content: const Text('At least two notes are needed for this patient in order to construct trends'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: const Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                          }

                                                                          if (shouldSetState) {
                                                                            setState(() {});
                                                                          }
                                                                        },
                                                                        text:
                                                                            'Update Profile',
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .auto_fix_high_outlined,
                                                                          size:
                                                                              18.0,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          height:
                                                                              40.0,
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              24.0,
                                                                              0.0,
                                                                              24.0,
                                                                              0.0),
                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              Colors.white,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF646464),
                                                                                fontSize: 12.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                              ),
                                                                          elevation:
                                                                              0.0,
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0xFFD2DBE9),
                                                                            width:
                                                                                1.5,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                  if (searchpatientprofilesItem
                                                                          .profileGeneration ==
                                                                      true)
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'PATIENT_PROFILES_Container_ez9w6zrr_ON_T');
                                                                          logFirebaseEvent(
                                                                              'Container_navigate_to');

                                                                          context
                                                                              .pushNamed(
                                                                            'PatientDashboardProfile',
                                                                            queryParameters:
                                                                                {
                                                                              'patientdoc': serializeParam(
                                                                                searchpatientprofilesItem,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'patientdoc': searchpatientprofilesItem,
                                                                              kTransitionInfoKey: const TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                                duration: Duration(milliseconds: 0),
                                                                              ),
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              200.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Colors.white,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: const Color(0xFFC1CBDB),
                                                                              width: 1.2,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(15.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Icon(
                                                                                  Icons.access_time_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 18.0,
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'View Most Recent Profile',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: const Color(0xFF646464),
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Generated ${dateTimeFormat('relative', searchpatientprofilesItem.profileGenerationTime)}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: const Color(0xFF969696),
                                                                                                fontSize: 10.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                  ],
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
            if (responsiveVisibility(
              context: context,
              desktop: false,
            ))
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    wrapWithModel(
                      model: _model.compressedMenuModel,
                      updateCallback: () => setState(() {}),
                      child: const CompressedMenuWidget(),
                    ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 50.0, 20.0, 20.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'PATIENT_PROFILES_Icon_c8jpswd3_ON_TAP');
                                    logFirebaseEvent('Icon_drawer');
                                    scaffoldKey.currentState!.openDrawer();
                                  },
                                  child: const Icon(
                                    Icons.menu_sharp,
                                    color: Color(0xFF969696),
                                    size: 24.0,
                                  ),
                                ),
                              Flexible(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              'Patient Profiles',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: const Color(0xFF6C6C6C),
                                                    fontSize: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 24.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 30.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 30.0;
                                                      } else {
                                                        return 30.0;
                                                      }
                                                    }(),
                                                    fontWeight: FontWeight.w300,
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
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              'Intelligent, evolving, and informative patient profiles all in one place',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: const Color(0xFF969696),
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.4,
                                        child: TextFormField(
                                          controller: _model.textController2,
                                          focusNode: _model.textFieldFocusNode2,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController2',
                                            const Duration(milliseconds: 2000),
                                            () async {
                                              logFirebaseEvent(
                                                  'PATIENT_PROFILES_TextField_0xjwy80n_ON_T');
                                              logFirebaseEvent(
                                                  'TextField_simple_search');
                                              await queryUsersRecordOnce()
                                                  .then(
                                                    (records) => _model
                                                            .simpleSearchResults2 =
                                                        TextSearch(
                                                      records
                                                          .map(
                                                            (record) =>
                                                                TextSearchItem
                                                                    .fromTerms(
                                                                        record,
                                                                        [
                                                                  record
                                                                      .displayName,
                                                                  record.email]),
                                                          )
                                                          .toList(),
                                                    )
                                                            .search(_model
                                                                .textController2
                                                                .text)
                                                            .map(
                                                                (r) => r.object)
                                                            .toList(),
                                                  )
                                                  .onError((_, __) => _model
                                                          .simpleSearchResults2 =
                                                      [])
                                                  .whenComplete(
                                                      () => setState(() {}));
                                            },
                                          ),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                'Search Patient Profiles',
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  color: const Color(0xFFA5A5A5),
                                                  fontSize: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 12.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 14.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 14.0;
                                                    } else {
                                                      return 14.0;
                                                    }
                                                  }(),
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily),
                                                ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFC1C1C1),
                                                width: 1.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(2000.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFC0C0C0),
                                                width: 1.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(2000.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(2000.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.5,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(2000.0),
                                            ),
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    30.0, 23.0, 30.0, 23.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                color: const Color(0xFF646464),
                                                fontSize: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 12.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 14.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 14.0;
                                                  } else {
                                                    return 14.0;
                                                  }
                                                }(),
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          validator: _model
                                              .textController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'PATIENT_PROFILES_ADD_PATIENT_BTN_ON_TAP');
                                          logFirebaseEvent('Button_drawer');
                                          scaffoldKey.currentState!
                                              .openEndDrawer();
                                        },
                                        text: 'Add Patient',
                                        icon: const Icon(
                                          Icons.add_sharp,
                                          size: 20.0,
                                        ),
                                        options: FFButtonOptions(
                                          height: 60.0,
                                          padding: const EdgeInsets.all(20.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0x00FFFFFF),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: const Color(0xFF646464),
                                                    fontSize: 14.0,
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
                                            color: Color(0xFFE0E4ED),
                                            width: 1.5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => Builder(
                                        builder: (context) {
                                          final patientprofiles =
                                              (currentUserDocument
                                                          ?.patientDocuments
                                                          .toList() ??
                                                      [])
                                                  .toList();
                                          return GridView.builder(
                                            padding: EdgeInsets.zero,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 1;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 2;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 2;
                                                } else {
                                                  return 2;
                                                }
                                              }(),
                                              crossAxisSpacing: 20.0,
                                              mainAxisSpacing: 20.0,
                                              childAspectRatio: 0.7,
                                            ),
                                            scrollDirection: Axis.vertical,
                                            itemCount: patientprofiles.length,
                                            itemBuilder: (context,
                                                patientprofilesIndex) {
                                              final patientprofilesItem =
                                                  patientprofiles[
                                                      patientprofilesIndex];
                                              return StreamBuilder<
                                                  PatientDocumentsRecord>(
                                                stream: PatientDocumentsRecord
                                                    .getDocument(
                                                        patientprofilesItem),
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
                                                  final containerPatientDocumentsRecord =
                                                      snapshot.data!;
                                                  return Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 20.0,
                                                          color:
                                                              Color(0x9DE0E2ED),
                                                          offset:
                                                              Offset(0.0, 2.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(30.0),
                                                      child: StreamBuilder<
                                                          List<
                                                              SessionNotesRecord>>(
                                                        stream:
                                                            querySessionNotesRecord(
                                                          queryBuilder: (sessionNotesRecord) =>
                                                              sessionNotesRecord
                                                                  .where(
                                                                    'patient_document',
                                                                    isEqualTo:
                                                                        containerPatientDocumentsRecord
                                                                            .reference,
                                                                  )
                                                                  .orderBy(
                                                                      'created_time',
                                                                      descending:
                                                                          true),
                                                          singleRecord: true,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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
                                                          List<SessionNotesRecord>
                                                              listViewSessionNotesRecordList =
                                                              snapshot.data!;
                                                          // Return an empty Container when the item does not exist.
                                                          if (snapshot
                                                              .data!.isEmpty) {
                                                            return Container();
                                                          }
                                                          final listViewSessionNotesRecord =
                                                              listViewSessionNotesRecordList
                                                                      .isNotEmpty
                                                                  ? listViewSessionNotesRecordList
                                                                      .first
                                                                  : null;
                                                          return ListView(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            children: [
                                                              Text(
                                                                containerPatientDocumentsRecord
                                                                    .name,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF646464),
                                                                      fontSize:
                                                                          22.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Patient since ${dateTimeFormat('yMMMd', containerPatientDocumentsRecord.createdTime)}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF969696),
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 45.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: const Color(
                                                                          0x00E0E4ED),
                                                                      width:
                                                                          1.5,
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      const Icon(
                                                                        Icons
                                                                            .notes,
                                                                        color: Color(
                                                                            0xFF969696),
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            'Note created ${dateTimeFormat('relative', listViewSessionNotesRecord?.createdTime)}',
                                                                            'No notes yet',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF969696),
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                constraints:
                                                                    const BoxConstraints(
                                                                  maxHeight:
                                                                      40.0,
                                                                ),
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                child:
                                                                    SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        listViewSessionNotesRecord!
                                                                            .aiSummary,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              color: const Color(0xFF7B7B7B),
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
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'PATIENT_PROFILES_Container_532ujao3_ON_T');
                                                                    var shouldSetState =
                                                                        false;
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .profilegenerating =
                                                                          true;
                                                                    });
                                                                    logFirebaseEvent(
                                                                        'Container_cloud_function');
                                                                    try {
                                                                      final result = await FirebaseFunctions
                                                                          .instance
                                                                          .httpsCallable(
                                                                              'getSessionNotes')
                                                                          .call({
                                                                        "docid": containerPatientDocumentsRecord
                                                                            .reference
                                                                            .id,
                                                                      });
                                                                      _model.cloudFunctionmobile =
                                                                          GetSessionNotesCloudFunctionCallResponse(
                                                                        data: result
                                                                            .data,
                                                                        succeeded:
                                                                            true,
                                                                        resultAsString: result
                                                                            .data
                                                                            .toString(),
                                                                        jsonBody:
                                                                            result.data,
                                                                      );
                                                                    } on FirebaseFunctionsException catch (error) {
                                                                      _model.cloudFunctionmobile =
                                                                          GetSessionNotesCloudFunctionCallResponse(
                                                                        errorCode:
                                                                            error.code,
                                                                        succeeded:
                                                                            false,
                                                                      );
                                                                    }

                                                                    shouldSetState =
                                                                        true;
                                                                    if (_model
                                                                        .cloudFunctionmobile!
                                                                        .succeeded!) {
                                                                      logFirebaseEvent(
                                                                          'Container_backend_call');

                                                                      await containerPatientDocumentsRecord
                                                                          .reference
                                                                          .update(
                                                                              createPatientDocumentsRecordData(
                                                                        rawRollingText: _model
                                                                            .cloudFunctionmobile
                                                                            ?.data,
                                                                      ));
                                                                      logFirebaseEvent(
                                                                          'Container_backend_call');
                                                                      _model.lastthreesessionmobile =
                                                                          await LastThreeSessionSummaryCall
                                                                              .call(
                                                                        therapynote: functions.replaceLineBreaks(functions.replaceDoubleQuotesLines(_model
                                                                            .cloudFunctionmobile
                                                                            ?.resultAsString)),
                                                                      );
                                                                      shouldSetState =
                                                                          true;
                                                                      if ((_model
                                                                              .lastthreesessionmobile
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        logFirebaseEvent(
                                                                            'Container_backend_call');

                                                                        await containerPatientDocumentsRecord
                                                                            .reference
                                                                            .update(createPatientDocumentsRecordData(
                                                                          rollingInsights:
                                                                              LastThreeSessionSummaryCall.cummulativeinsights(
                                                                            (_model.lastthreesessionmobile?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          profileGeneration:
                                                                              true,
                                                                          profileGenerationTime:
                                                                              getCurrentTimestamp,
                                                                        ));
                                                                        logFirebaseEvent(
                                                                            'Container_backend_call');
                                                                        _model.dsmmobile =
                                                                            await CummulativeDSMCall.call(
                                                                          therapynote:
                                                                              functions.replaceLineBreaks(functions.replaceDoubleQuotesLines(LastThreeSessionSummaryCall.cummulativeinsights(
                                                                            (_model.lastthreesessionmobile?.jsonBody ??
                                                                                ''),
                                                                          ))),
                                                                        );
                                                                        shouldSetState =
                                                                            true;
                                                                        if ((_model.dsmmobile?.succeeded ??
                                                                            true)) {
                                                                          logFirebaseEvent(
                                                                              'Container_backend_call');

                                                                          await containerPatientDocumentsRecord
                                                                              .reference
                                                                              .update(createPatientDocumentsRecordData(
                                                                            dSM5Insights:
                                                                                CummulativeDSMCall.noteshypotheses(
                                                                              (_model.dsmmobile?.jsonBody ?? ''),
                                                                            ).toString(),
                                                                          ));
                                                                          logFirebaseEvent(
                                                                              'Container_backend_call');
                                                                          _model.concernsmobile =
                                                                              await TopPresentingConcernsCall.call(
                                                                            therapynote:
                                                                                functions.replaceLineBreaks(LastThreeSessionSummaryCall.cummulativeinsights(
                                                                              (_model.lastthreesessionmobile?.jsonBody ?? ''),
                                                                            )),
                                                                          );
                                                                          shouldSetState =
                                                                              true;
                                                                          if ((_model.concernsmobile?.succeeded ??
                                                                              true)) {
                                                                            logFirebaseEvent('Container_backend_call');

                                                                            await containerPatientDocumentsRecord.reference.update(createPatientDocumentsRecordData(
                                                                              presentingConcerns: TopPresentingConcernsCall.cummulativeinsights(
                                                                                (_model.concernsmobile?.jsonBody ?? ''),
                                                                              ),
                                                                            ));
                                                                          } else {
                                                                            logFirebaseEvent('Container_show_snack_bar');
                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                              SnackBar(
                                                                                content: Text(
                                                                                  'Failed to assess presenting concerns',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Manrope',
                                                                                    color: const Color(0xFFE1E1E1),
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                                ),
                                                                                duration: const Duration(milliseconds: 4000),
                                                                                backgroundColor: const Color(0xFF2F2F2F),
                                                                              ),
                                                                            );
                                                                          }

                                                                          logFirebaseEvent(
                                                                              'Container_update_app_state');
                                                                          setState(
                                                                              () {
                                                                            FFAppState().profilegenerating =
                                                                                false;
                                                                          });
                                                                          logFirebaseEvent(
                                                                              'Container_navigate_to');

                                                                          context
                                                                              .pushNamed(
                                                                            'PatientDashboardProfile',
                                                                            queryParameters:
                                                                                {
                                                                              'patientdoc': serializeParam(
                                                                                containerPatientDocumentsRecord,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'patientdoc': containerPatientDocumentsRecord,
                                                                              kTransitionInfoKey: const TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                                duration: Duration(milliseconds: 0),
                                                                              ),
                                                                            },
                                                                          );
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_show_snack_bar');
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Failed to analyze DSM coding',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Manrope',
                                                                                  color: const Color(0xFFE1E1E1),
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                              ),
                                                                              duration: const Duration(milliseconds: 4000),
                                                                              backgroundColor: const Color(0xFF2F2F2F),
                                                                            ),
                                                                          );
                                                                        }
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'Container_show_snack_bar');
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Failed to analyze cummulative notes',
                                                                              style: GoogleFonts.getFont(
                                                                                'Manrope',
                                                                                color: const Color(0xFFE1E1E1),
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                const Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                const Color(0xFF2F2F2F),
                                                                          ),
                                                                        );
                                                                      }
                                                                    } else {
                                                                      if (shouldSetState) {
                                                                        setState(
                                                                            () {});
                                                                      }
                                                                      return;
                                                                    }

                                                                    if (shouldSetState) {
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: const Color(
                                                                            0xFFE5E8F4),
                                                                        width:
                                                                            1.5,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              15.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Text(
                                                                            'Generate Profile',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFF878787),
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                          const Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.auto_awesome_sharp,
                                                                              color: Color(0xFFADADC3),
                                                                              size: 14.0,
                                                                            ),
                                                                          ),
                                                                          if (FFAppState().profilegenerating ==
                                                                              true)
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              child: Lottie.asset(
                                                                                'assets/lottie_animations/animation_lkz3t31a.json',
                                                                                width: 30.0,
                                                                                height: 30.0,
                                                                                fit: BoxFit.cover,
                                                                                animate: true,
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              if (containerPatientDocumentsRecord
                                                                      .profileGeneration ==
                                                                  true)
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PATIENT_PROFILES_Container_bdjldzhx_ON_T');
                                                                      logFirebaseEvent(
                                                                          'Container_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        'PatientDashboardProfile',
                                                                        queryParameters:
                                                                            {
                                                                          'patientdoc':
                                                                              serializeParam(
                                                                            containerPatientDocumentsRecord,
                                                                            ParamType.Document,
                                                                          ),
                                                                        }.withoutNulls,
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          'patientdoc':
                                                                              containerPatientDocumentsRecord,
                                                                          kTransitionInfoKey:
                                                                              const TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                            duration:
                                                                                Duration(milliseconds: 0),
                                                                          ),
                                                                        },
                                                                      );
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      constraints:
                                                                          const BoxConstraints(
                                                                        maxWidth:
                                                                            180.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              const Color(0xFFE5E8F4),
                                                                          width:
                                                                              1.5,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(15.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'View Last Snapshot',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFF878787),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'Last recorded ${dateTimeFormat('relative', containerPatientDocumentsRecord.profileGenerationTime)}',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFFB4B4B4),
                                                                                            fontSize: 10.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            const Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.access_time_sharp,
                                                                                color: Color(0xFFADADC3),
                                                                                size: 14.0,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
