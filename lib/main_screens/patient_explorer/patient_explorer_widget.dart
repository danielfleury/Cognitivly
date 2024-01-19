import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/add_patient_widget.dart';
import '/components/business_associate_agreement_widget.dart';
import '/components/compressed_menu_widget.dart';
import '/components/side_menu_widget.dart';
import '/components/sidemenu_web_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'patient_explorer_model.dart';
export 'patient_explorer_model.dart';

class PatientExplorerWidget extends StatefulWidget {
  const PatientExplorerWidget({super.key});

  @override
  _PatientExplorerWidgetState createState() => _PatientExplorerWidgetState();
}

class _PatientExplorerWidgetState extends State<PatientExplorerWidget> {
  late PatientExplorerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientExplorerModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PatientExplorer'});
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
        endDrawer: Drawer(
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
                          'PATIENT_EXPLORER_Image_qqgs15vz_ON_TAP');
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
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
                                              'PATIENT_EXPLORER_Container_wz0qhsw9_ON_T');
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
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: SizedBox(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          1.0,
                                                      child: const AddPatientWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
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
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: SizedBox(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          1.0,
                                                      child:
                                                          const BusinessAssociateAgreementWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          }
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
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
                                                      CrossAxisAlignment.center,
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
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFF969696),
                                                                  fontSize:
                                                                      10.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 2.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Add Manually',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF646464),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: Text(
                                                    'I\'ll manually enter patient details, including name and contact information. Patient information can be edited later',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF969696),
                                                          fontSize: 12.0,
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
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
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
                                              'PATIENT_EXPLORER_Container_ocax08kk_ON_T');
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
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: SizedBox(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          1.0,
                                                      child:
                                                          const BusinessAssociateAgreementWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          }
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
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
                                                      CrossAxisAlignment.center,
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
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  color: const Color(
                                                                      0xFF969696),
                                                                  fontSize:
                                                                      10.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 2.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Add via Invitation',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF646464),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: Text(
                                                    'I\'ll invite a patient\'s email to join Cognitiv.ly and register an account via a unique access code',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF969696),
                                                          fontSize: 12.0,
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
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
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
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
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
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                  Form(
                                    key: _model.formKey,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: TextFormField(
                                          controller: _model.textController1,
                                          focusNode: _model.textFieldFocusNode1,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                              .textController1Validator
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
                                            'PATIENT_EXPLORER_CONTINUE_BTN_ON_TAP');
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
                                        logFirebaseEvent('Button_backend_call');

                                        var usercodesRecordReference =
                                            UsercodesRecord.collection.doc();
                                        await usercodesRecordReference
                                            .set(createUsercodesRecordData(
                                          email: _model.textController1.text,
                                          accesscode:
                                              FFAppState().accesstempcode,
                                          therapist: currentUserReference,
                                          date: getCurrentTimestamp,
                                        ));
                                        _model.aPIRef =
                                            UsercodesRecord.getDocumentFromData(
                                                createUsercodesRecordData(
                                                  email: _model
                                                      .textController1.text,
                                                  accesscode: FFAppState()
                                                      .accesstempcode,
                                                  therapist:
                                                      currentUserReference,
                                                  date: getCurrentTimestamp,
                                                ),
                                                usercodesRecordReference);
                                        logFirebaseEvent('Button_backend_call');
                                        await SecurityEmailsCall.call(
                                          subject: 'Your Cognitiv.ly Passcode',
                                          emailBody:
                                              'Hi there! Your practitioner $currentUserDisplayName is requesting that you join Cognitiv.ly\'s web platform to better streamline patient documentation. You can register a patient account at https://cognitivly-zrzv4f.flutterflow.app/registration Your Passcode is ${FFAppState().accesstempcode}. Keep this code safe and do not share it with anyone.',
                                          recipient:
                                              _model.textController1.text,
                                        );
                                        logFirebaseEvent('Button_page_view');
                                        await _model.pageViewController
                                            ?.nextPage(
                                          duration: const Duration(milliseconds: 300),
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
                                        textStyle: FlutterFlowTheme.of(context)
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
                                        padding: const EdgeInsetsDirectional.fromSTEB(
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
                                        padding: const EdgeInsetsDirectional.fromSTEB(
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
                                        padding: const EdgeInsetsDirectional.fromSTEB(
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
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'PATIENT_EXPLORER_Icon_pu9zu907_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Icon_copy_to_clipboard');
                                                  await Clipboard.setData(
                                                      ClipboardData(
                                                          text:
                                                              listViewUsercodesRecord!
                                                                  .accesscode));
                                                  logFirebaseEvent(
                                                      'Icon_show_snack_bar');
                                                  ScaffoldMessenger.of(context)
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
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'PATIENT_EXPLORER_PAGE_DONE_BTN_ON_TAP');
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
                                        'Patient Notes',
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
                                          'View patient notes and generated analyses all in one place',
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
                                            controller: _model.textController2,
                                            focusNode:
                                                _model.textFieldFocusNode2,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textController2',
                                              const Duration(milliseconds: 2000),
                                              () async {
                                                logFirebaseEvent(
                                                    'PATIENT_EXPLORER_TextField_wselakjh_ON_T');
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
                                                              .textController2
                                                              .text)
                                                          .map((r) => r.object)
                                                          .take(10)
                                                          .toList();
                                                });
                                              },
                                            ),
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Search Patients',
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
                                                  color: Color(0xFFD2D2D2),
                                                  width: 1.5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2000.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFD2D2D2),
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
                                                      .fromSTEB(30.0, 22.0,
                                                          30.0, 22.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  color: const Color(0xFF646464),
                                                  fontSize: 14.0,
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
                                            'PATIENT_EXPLORER_ADD_PATIENT_BTN_ON_TAP');
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
                            Container(
                              decoration: const BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                child: Stack(
                                  children: [
                                    if (_model.textController2.text == '')
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: PagedListView<
                                            DocumentSnapshot<Object?>?,
                                            PatientDocumentsRecord>(
                                          pagingController:
                                              _model.setEmptysearchController1(
                                            PatientDocumentsRecord.collection
                                                .where(
                                                  'therapist',
                                                  isEqualTo:
                                                      currentUserReference,
                                                )
                                                .orderBy('name'),
                                          ),
                                          padding: EdgeInsets.zero,
                                          reverse: false,
                                          scrollDirection: Axis.vertical,
                                          builderDelegate:
                                              PagedChildBuilderDelegate<
                                                  PatientDocumentsRecord>(
                                            // Customize what your widget looks like when it's loading the first page.
                                            firstPageProgressIndicatorBuilder:
                                                (_) => const Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitRipple(
                                                  color: Color(0xFFB9DFFF),
                                                  size: 50.0,
                                                ),
                                              ),
                                            ),
                                            // Customize what your widget looks like when it's loading another page.
                                            newPageProgressIndicatorBuilder:
                                                (_) => const Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitRipple(
                                                  color: Color(0xFFB9DFFF),
                                                  size: 50.0,
                                                ),
                                              ),
                                            ),

                                            itemBuilder:
                                                (context, _, emptysearchIndex) {
                                              final emptysearchPatientDocumentsRecord =
                                                  _model.emptysearchPagingController1!
                                                          .itemList![
                                                      emptysearchIndex];
                                              return Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 20.0),
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
                                                        'PATIENT_EXPLORER_Container_vhdjwqgq_ON_T');
                                                    if (valueOrDefault(
                                                                currentUserDocument
                                                                    ?.baaSignature,
                                                                '') !=
                                                            '') {
                                                      logFirebaseEvent(
                                                          'Container_navigate_to');

                                                      context.pushNamed(
                                                        'PatientNotes',
                                                        queryParameters: {
                                                          'patientdocument':
                                                              serializeParam(
                                                            emptysearchPatientDocumentsRecord,
                                                            ParamType.Document,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          'patientdocument':
                                                              emptysearchPatientDocumentsRecord,
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
                                                          'Container_bottom_sheet');
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            const Color(0x2D000000),
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () => _model
                                                                    .unfocusNode
                                                                    .canRequestFocus
                                                                ? FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child: SizedBox(
                                                                height: MediaQuery.sizeOf(
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
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.6,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 20.0,
                                                          color:
                                                              Color(0xC4E3E8F1),
                                                          offset:
                                                              Offset(0.0, 2.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(20.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
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
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        emptysearchPatientDocumentsRecord
                                                                            .name,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              color: const Color(0xFF646464),
                                                                              fontSize: 16.0,
                                                                              fontWeight: FontWeight.w500,
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
                                                                          'Registered client since ${dateTimeFormat('yMMMd', emptysearchPatientDocumentsRecord.createdTime)}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF969696),
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w600,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              FutureBuilder<
                                                                  int>(
                                                                future:
                                                                    querySessionNotesRecordCount(
                                                                  queryBuilder:
                                                                      (sessionNotesRecord) =>
                                                                          sessionNotesRecord
                                                                              .where(
                                                                    'patient_document',
                                                                    isEqualTo:
                                                                        emptysearchPatientDocumentsRecord
                                                                            .reference,
                                                                  ),
                                                                ),
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
                                                                  int containerCount =
                                                                      snapshot
                                                                          .data!;
                                                                  return Container(
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      color: Color(
                                                                          0x00FFFFFF),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: const Color(0xFFD8D8D8),
                                                                              width: 1.2,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(10.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: SvgPicture.asset(
                                                                                    'assets/images/patient-notes-icon.svg',
                                                                                    width: 20.0,
                                                                                    height: 20.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    '${containerCount.toString()} Notes Created',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFF818181),
                                                                                          fontSize: 12.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        if (containerCount !=
                                                                            0)
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                border: Border.all(
                                                                                  color: const Color(0xFFD8D8D8),
                                                                                  width: 1.2,
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(10.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                      child: SvgPicture.asset(
                                                                                        'assets/images/time-modified-icon.svg',
                                                                                        width: 20.0,
                                                                                        height: 20.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Last updated ${dateTimeFormat('relative', emptysearchPatientDocumentsRecord.lastupdated)}',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: const Color(0xFF818181),
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                  );
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'PATIENT_EXPLORER_CREATE_NOTE_BTN_ON_TAP');
                                                                if (valueOrDefault(
                                                                            currentUserDocument?.baaSignature,
                                                                            '') !=
                                                                        '') {
                                                                  logFirebaseEvent(
                                                                      'Button_backend_call');

                                                                  var sessionNotesRecordReference =
                                                                      SessionNotesRecord
                                                                          .collection
                                                                          .doc();
                                                                  await sessionNotesRecordReference
                                                                      .set(
                                                                          createSessionNotesRecordData(
                                                                    patientDocument:
                                                                        emptysearchPatientDocumentsRecord
                                                                            .reference,
                                                                    user:
                                                                        currentUserReference,
                                                                    rawNoteTitle:
                                                                        'Untitled Note',
                                                                  ));
                                                                  _model.quickNote =
                                                                      SessionNotesRecord.getDocumentFromData(
                                                                          createSessionNotesRecordData(
                                                                            patientDocument:
                                                                                emptysearchPatientDocumentsRecord.reference,
                                                                            user:
                                                                                currentUserReference,
                                                                            rawNoteTitle:
                                                                                'Untitled Note',
                                                                          ),
                                                                          sessionNotesRecordReference);
                                                                  logFirebaseEvent(
                                                                      'Button_navigate_to');

                                                                  context
                                                                      .pushNamed(
                                                                    'NoteEditor',
                                                                    queryParameters:
                                                                        {
                                                                      'notedocument':
                                                                          serializeParam(
                                                                        _model
                                                                            .quickNote,
                                                                        ParamType
                                                                            .Document,
                                                                      ),
                                                                      'patientdoc':
                                                                          serializeParam(
                                                                        emptysearchPatientDocumentsRecord,
                                                                        ParamType
                                                                            .Document,
                                                                      ),
                                                                    }.withoutNulls,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      'notedocument':
                                                                          _model
                                                                              .quickNote,
                                                                      'patientdoc':
                                                                          emptysearchPatientDocumentsRecord,
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
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'Button_bottom_sheet');
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        const Color(
                                                                            0x2D000000),
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return GestureDetector(
                                                                        onTap: () => _model.unfocusNode.canRequestFocus
                                                                            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                            : FocusScope.of(context).unfocus(),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              SizedBox(
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 1.0,
                                                                            child:
                                                                                const BusinessAssociateAgreementWidget(),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                }

                                                                setState(() {});
                                                              },
                                                              text:
                                                                  'Create Note',
                                                              icon: const Icon(
                                                                Icons.add_sharp,
                                                                size: 15.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 40.0,
                                                                padding: const EdgeInsetsDirectional
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
                                                                color: Colors
                                                                    .white,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF646464),
                                                                      fontSize:
                                                                          14.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleSmallFamily),
                                                                    ),
                                                                elevation: 0.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Color(
                                                                      0xFFCECECE),
                                                                  width: 1.2,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10000.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    if (_model.textController2.text != '')
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final activesearchpatientdocs =
                                                _model.simpleSearchResults1
                                                    .map((e) => e)
                                                    .toList();
                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              itemCount: activesearchpatientdocs
                                                  .length,
                                              itemBuilder: (context,
                                                  activesearchpatientdocsIndex) {
                                                final activesearchpatientdocsItem =
                                                    activesearchpatientdocs[
                                                        activesearchpatientdocsIndex];
                                                return Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 0.0, 10.0,
                                                          20.0),
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
                                                          'PATIENT_EXPLORER_Container_2uui25r5_ON_T');
                                                      if (valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.baaSignature,
                                                                  '') !=
                                                              '') {
                                                        logFirebaseEvent(
                                                            'Container_navigate_to');

                                                        context.pushNamed(
                                                          'PatientNotes',
                                                          queryParameters: {
                                                            'patientdocument':
                                                                serializeParam(
                                                              activesearchpatientdocsItem,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'patientdocument':
                                                                activesearchpatientdocsItem,
                                                            kTransitionInfoKey:
                                                                const TransitionInfo(
                                                              hasTransition:
                                                                  true,
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
                                                            'Container_bottom_sheet');
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              const Color(0x2D000000),
                                                          enableDrag: false,
                                                          context: context,
                                                          builder: (context) {
                                                            return GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    SizedBox(
                                                                  height: MediaQuery.sizeOf(
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
                                                            safeSetState(
                                                                () {}));
                                                      }
                                                    },
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.6,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 20.0,
                                                            color: Color(
                                                                0xC4E3E8F1),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            20.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
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
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          activesearchpatientdocsItem
                                                                              .name,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF646464),
                                                                                fontSize: 16.0,
                                                                                fontWeight: FontWeight.w500,
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
                                                                            'Registered client since ${dateTimeFormat('yMMMd', activesearchpatientdocsItem.createdTime)}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFF969696),
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                FutureBuilder<
                                                                    int>(
                                                                  future:
                                                                      querySessionNotesRecordCount(
                                                                    queryBuilder:
                                                                        (sessionNotesRecord) =>
                                                                            sessionNotesRecord.where(
                                                                      'patient_document',
                                                                      isEqualTo:
                                                                          activesearchpatientdocsItem
                                                                              .reference,
                                                                    ),
                                                                  ),
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
                                                                    int containerCount =
                                                                        snapshot
                                                                            .data!;
                                                                    return Container(
                                                                      decoration:
                                                                          const BoxDecoration(
                                                                        color: Color(
                                                                            0x00FFFFFF),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(5.0),
                                                                              border: Border.all(
                                                                                color: const Color(0xFFD8D8D8),
                                                                                width: 1.2,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(10.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(0.0),
                                                                                    child: SvgPicture.asset(
                                                                                      'assets/images/patient-notes-icon.svg',
                                                                                      width: 20.0,
                                                                                      height: 20.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      '${containerCount.toString()} Notes Created',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: const Color(0xFF818181),
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          if (containerCount !=
                                                                              0)
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                                  border: Border.all(
                                                                                    color: const Color(0xFFD8D8D8),
                                                                                    width: 1.2,
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(10.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        child: SvgPicture.asset(
                                                                                          'assets/images/time-modified-icon.svg',
                                                                                          width: 20.0,
                                                                                          height: 20.0,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Last updated ${dateTimeFormat('relative', activesearchpatientdocsItem.lastupdated)}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: const Color(0xFF818181),
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                    );
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'PATIENT_EXPLORER_CREATE_NOTE_BTN_ON_TAP');
                                                                  if (valueOrDefault(
                                                                              currentUserDocument?.baaSignature,
                                                                              '') !=
                                                                          '') {
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');

                                                                    var sessionNotesRecordReference =
                                                                        SessionNotesRecord
                                                                            .collection
                                                                            .doc();
                                                                    await sessionNotesRecordReference
                                                                        .set(
                                                                            createSessionNotesRecordData(
                                                                      patientDocument:
                                                                          activesearchpatientdocsItem
                                                                              .reference,
                                                                      user:
                                                                          currentUserReference,
                                                                      rawNoteTitle:
                                                                          'Untitled Note',
                                                                      createdTime:
                                                                          getCurrentTimestamp,
                                                                    ));
                                                                    _model.quickNoteActiveSearch =
                                                                        SessionNotesRecord.getDocumentFromData(
                                                                            createSessionNotesRecordData(
                                                                              patientDocument: activesearchpatientdocsItem.reference,
                                                                              user: currentUserReference,
                                                                              rawNoteTitle: 'Untitled Note',
                                                                              createdTime: getCurrentTimestamp,
                                                                            ),
                                                                            sessionNotesRecordReference);
                                                                    logFirebaseEvent(
                                                                        'Button_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'NoteEditor',
                                                                      queryParameters:
                                                                          {
                                                                        'notedocument':
                                                                            serializeParam(
                                                                          _model
                                                                              .quickNoteActiveSearch,
                                                                          ParamType
                                                                              .Document,
                                                                        ),
                                                                        'patientdoc':
                                                                            serializeParam(
                                                                          activesearchpatientdocsItem,
                                                                          ParamType
                                                                              .Document,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        'notedocument':
                                                                            _model.quickNoteActiveSearch,
                                                                        'patientdoc':
                                                                            activesearchpatientdocsItem,
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
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'Button_bottom_sheet');
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          const Color(
                                                                              0x2D000000),
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return GestureDetector(
                                                                          onTap: () => _model.unfocusNode.canRequestFocus
                                                                              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                              : FocusScope.of(context).unfocus(),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                SizedBox(
                                                                              height: MediaQuery.sizeOf(context).height * 1.0,
                                                                              child: const BusinessAssociateAgreementWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  }

                                                                  setState(
                                                                      () {});
                                                                },
                                                                text:
                                                                    'Create Note',
                                                                icon: const Icon(
                                                                  Icons
                                                                      .add_sharp,
                                                                  size: 15.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: Colors
                                                                      .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF646464),
                                                                        fontSize:
                                                                            14.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Color(
                                                                        0xFFCECECE),
                                                                    width: 1.2,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10000.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
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
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'PATIENT_EXPLORER_Icon_fcau33kg_ON_TAP');
                                                logFirebaseEvent('Icon_drawer');
                                                scaffoldKey.currentState!
                                                    .openDrawer();
                                              },
                                              child: const Icon(
                                                Icons.menu_sharp,
                                                color: Color(0xFF969696),
                                                size: 24.0,
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Text(
                                              'Patient Notes',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: const Color(0xFF757575),
                                                    fontSize: 26.0,
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
                                              'View patient notes and generated analyses all in one place',
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                          controller: _model.textController3,
                                          focusNode: _model.textFieldFocusNode3,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController3',
                                            const Duration(milliseconds: 2000),
                                            () async {
                                              logFirebaseEvent(
                                                  'PATIENT_EXPLORER_TextField_vpwu323n_ON_T');
                                              logFirebaseEvent(
                                                  'TextField_simple_search');
                                              await queryPatientDocumentsRecordOnce()
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
                                                                  record.name,
                                                                  record.email]),
                                                          )
                                                          .toList(),
                                                    )
                                                            .search(_model
                                                                .textController3
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
                                            labelText: 'Search Patients',
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
                                                      return 16.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 16.0;
                                                    } else {
                                                      return 16.0;
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
                                                    30.0, 22.0, 30.0, 22.0),
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
                                              .textController3Validator
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
                                              'PATIENT_EXPLORER_ADD_PATIENT_BTN_ON_TAP');
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
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
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
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                child: Stack(
                                  children: [
                                    if (_model.textController2.text == '')
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: PagedListView<
                                            DocumentSnapshot<Object?>?,
                                            PatientDocumentsRecord>(
                                          pagingController:
                                              _model.setEmptysearchController2(
                                            PatientDocumentsRecord.collection
                                                .where(
                                                  'therapist',
                                                  isEqualTo:
                                                      currentUserReference,
                                                )
                                                .orderBy('name'),
                                          ),
                                          padding: EdgeInsets.zero,
                                          reverse: false,
                                          scrollDirection: Axis.vertical,
                                          builderDelegate:
                                              PagedChildBuilderDelegate<
                                                  PatientDocumentsRecord>(
                                            // Customize what your widget looks like when it's loading the first page.
                                            firstPageProgressIndicatorBuilder:
                                                (_) => const Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitRipple(
                                                  color: Color(0xFFB9DFFF),
                                                  size: 50.0,
                                                ),
                                              ),
                                            ),
                                            // Customize what your widget looks like when it's loading another page.
                                            newPageProgressIndicatorBuilder:
                                                (_) => const Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitRipple(
                                                  color: Color(0xFFB9DFFF),
                                                  size: 50.0,
                                                ),
                                              ),
                                            ),

                                            itemBuilder:
                                                (context, _, emptysearchIndex) {
                                              final emptysearchPatientDocumentsRecord =
                                                  _model.emptysearchPagingController2!
                                                          .itemList![
                                                      emptysearchIndex];
                                              return Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 20.0),
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
                                                        'PATIENT_EXPLORER_Container_tn2nb83o_ON_T');
                                                    if (valueOrDefault(
                                                                currentUserDocument
                                                                    ?.baaSignature,
                                                                '') !=
                                                            '') {
                                                      logFirebaseEvent(
                                                          'Container_navigate_to');

                                                      context.pushNamed(
                                                        'PatientNotes',
                                                        queryParameters: {
                                                          'patientdocument':
                                                              serializeParam(
                                                            emptysearchPatientDocumentsRecord,
                                                            ParamType.Document,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          'patientdocument':
                                                              emptysearchPatientDocumentsRecord,
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
                                                          'Container_bottom_sheet');
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            const Color(0x2D000000),
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () => _model
                                                                    .unfocusNode
                                                                    .canRequestFocus
                                                                ? FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child: SizedBox(
                                                                height: MediaQuery.sizeOf(
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
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.6,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 20.0,
                                                          color:
                                                              Color(0xC4E3E8F1),
                                                          offset:
                                                              Offset(0.0, 2.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(20.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
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
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        emptysearchPatientDocumentsRecord
                                                                            .name,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              color: const Color(0xFF646464),
                                                                              fontSize: 16.0,
                                                                              fontWeight: FontWeight.w500,
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
                                                                          'Registered client since ${dateTimeFormat('yMMMd', emptysearchPatientDocumentsRecord.createdTime)}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF969696),
                                                                                fontSize: 10.0,
                                                                                fontWeight: FontWeight.w600,
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
                                                                        child: FutureBuilder<
                                                                            int>(
                                                                          future:
                                                                              querySessionNotesRecordCount(
                                                                            queryBuilder: (sessionNotesRecord) =>
                                                                                sessionNotesRecord.where(
                                                                              'patient_document',
                                                                              isEqualTo: emptysearchPatientDocumentsRecord.reference,
                                                                            ),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            int containerCount =
                                                                                snapshot.data!;
                                                                            return Container(
                                                                              decoration: const BoxDecoration(
                                                                                color: Color(0x00FFFFFF),
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Container(
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(5.0),
                                                                                      border: Border.all(
                                                                                        color: const Color(0xFFD8D8D8),
                                                                                        width: 1.2,
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsets.all(10.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(0.0),
                                                                                            child: SvgPicture.asset(
                                                                                              'assets/images/patient-notes-icon.svg',
                                                                                              width: 20.0,
                                                                                              height: 20.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              '${containerCount.toString()} Notes Created',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Manrope',
                                                                                                    color: const Color(0xFF818181),
                                                                                                    fontSize: 10.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  if (containerCount != 0)
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        decoration: BoxDecoration(
                                                                                          borderRadius: BorderRadius.circular(5.0),
                                                                                          border: Border.all(
                                                                                            color: const Color(0xFFD8D8D8),
                                                                                            width: 1.2,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsets.all(10.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                                                child: SvgPicture.asset(
                                                                                                  'assets/images/time-modified-icon.svg',
                                                                                                  width: 20.0,
                                                                                                  height: 20.0,
                                                                                                  fit: BoxFit.cover,
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Last updated ${dateTimeFormat('relative', emptysearchPatientDocumentsRecord.lastupdated)}',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Manrope',
                                                                                                        color: const Color(0xFF818181),
                                                                                                        fontSize: 10.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'PATIENT_EXPLORER_CREATE_NOTE_BTN_ON_TAP');
                                                                if (valueOrDefault(
                                                                            currentUserDocument?.baaSignature,
                                                                            '') !=
                                                                        '') {
                                                                  logFirebaseEvent(
                                                                      'Button_backend_call');

                                                                  var sessionNotesRecordReference =
                                                                      SessionNotesRecord
                                                                          .collection
                                                                          .doc();
                                                                  await sessionNotesRecordReference
                                                                      .set(
                                                                          createSessionNotesRecordData(
                                                                    patientDocument:
                                                                        emptysearchPatientDocumentsRecord
                                                                            .reference,
                                                                    user:
                                                                        currentUserReference,
                                                                    rawNoteTitle:
                                                                        'Untitled Note',
                                                                  ));
                                                                  _model.quickNoteMobile =
                                                                      SessionNotesRecord.getDocumentFromData(
                                                                          createSessionNotesRecordData(
                                                                            patientDocument:
                                                                                emptysearchPatientDocumentsRecord.reference,
                                                                            user:
                                                                                currentUserReference,
                                                                            rawNoteTitle:
                                                                                'Untitled Note',
                                                                          ),
                                                                          sessionNotesRecordReference);
                                                                  logFirebaseEvent(
                                                                      'Button_navigate_to');

                                                                  context
                                                                      .pushNamed(
                                                                    'NoteEditor',
                                                                    queryParameters:
                                                                        {
                                                                      'notedocument':
                                                                          serializeParam(
                                                                        _model
                                                                            .quickNoteMobile,
                                                                        ParamType
                                                                            .Document,
                                                                      ),
                                                                      'patientdoc':
                                                                          serializeParam(
                                                                        emptysearchPatientDocumentsRecord,
                                                                        ParamType
                                                                            .Document,
                                                                      ),
                                                                    }.withoutNulls,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      'notedocument':
                                                                          _model
                                                                              .quickNoteMobile,
                                                                      'patientdoc':
                                                                          emptysearchPatientDocumentsRecord,
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
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'Button_bottom_sheet');
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        const Color(
                                                                            0x2D000000),
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return GestureDetector(
                                                                        onTap: () => _model.unfocusNode.canRequestFocus
                                                                            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                            : FocusScope.of(context).unfocus(),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              SizedBox(
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 1.0,
                                                                            child:
                                                                                const BusinessAssociateAgreementWidget(),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                }

                                                                setState(() {});
                                                              },
                                                              text:
                                                                  'Create Note',
                                                              icon: const Icon(
                                                                Icons.add_sharp,
                                                                size: 15.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 40.0,
                                                                padding: const EdgeInsetsDirectional
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
                                                                color: Colors
                                                                    .white,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: const Color(
                                                                          0xFF646464),
                                                                      fontSize:
                                                                          14.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleSmallFamily),
                                                                    ),
                                                                elevation: 0.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Color(
                                                                      0xFFCECECE),
                                                                  width: 1.2,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10000.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    if (_model.textController2.text != '')
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final activesearchpatientdocs =
                                                _model.simpleSearchResults1
                                                    .map((e) => e)
                                                    .toList();
                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              itemCount: activesearchpatientdocs
                                                  .length,
                                              itemBuilder: (context,
                                                  activesearchpatientdocsIndex) {
                                                final activesearchpatientdocsItem =
                                                    activesearchpatientdocs[
                                                        activesearchpatientdocsIndex];
                                                return Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 0.0, 10.0,
                                                          20.0),
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
                                                          'PATIENT_EXPLORER_Container_2l98hnz1_ON_T');
                                                      if (valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.baaSignature,
                                                                  '') !=
                                                              '') {
                                                        logFirebaseEvent(
                                                            'Container_navigate_to');

                                                        context.pushNamed(
                                                          'PatientNotes',
                                                          queryParameters: {
                                                            'patientdocument':
                                                                serializeParam(
                                                              activesearchpatientdocsItem,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'patientdocument':
                                                                activesearchpatientdocsItem,
                                                            kTransitionInfoKey:
                                                                const TransitionInfo(
                                                              hasTransition:
                                                                  true,
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
                                                            'Container_bottom_sheet');
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              const Color(0x2D000000),
                                                          enableDrag: false,
                                                          context: context,
                                                          builder: (context) {
                                                            return GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    SizedBox(
                                                                  height: MediaQuery.sizeOf(
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
                                                            safeSetState(
                                                                () {}));
                                                      }
                                                    },
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.6,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 20.0,
                                                            color: Color(
                                                                0xC4E3E8F1),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            20.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
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
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          activesearchpatientdocsItem
                                                                              .name,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: const Color(0xFF646464),
                                                                                fontSize: 16.0,
                                                                                fontWeight: FontWeight.w500,
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
                                                                            'Registered client since ${dateTimeFormat('yMMMd', activesearchpatientdocsItem.createdTime)}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: const Color(0xFF969696),
                                                                                  fontSize: 10.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            FutureBuilder<int>(
                                                              future:
                                                                  querySessionNotesRecordCount(
                                                                queryBuilder:
                                                                    (sessionNotesRecord) =>
                                                                        sessionNotesRecord
                                                                            .where(
                                                                  'patient_document',
                                                                  isEqualTo:
                                                                      activesearchpatientdocsItem
                                                                          .reference,
                                                                ),
                                                              ),
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
                                                                        color: Color(
                                                                            0xFFB9DFFF),
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                int containerCount =
                                                                    snapshot
                                                                        .data!;
                                                                return Container(
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    color: Color(
                                                                        0x00FFFFFF),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(5.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: const Color(0xFFD8D8D8),
                                                                              width: 1.2,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(10.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: SvgPicture.asset(
                                                                                    'assets/images/patient-notes-icon.svg',
                                                                                    width: 20.0,
                                                                                    height: 20.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    '${containerCount.toString()} Notes Created',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: const Color(0xFF818181),
                                                                                          fontSize: 10.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        if (containerCount !=
                                                                            0)
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                border: Border.all(
                                                                                  color: const Color(0xFFD8D8D8),
                                                                                  width: 1.2,
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(10.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                      child: SvgPicture.asset(
                                                                                        'assets/images/time-modified-icon.svg',
                                                                                        width: 20.0,
                                                                                        height: 20.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Last updated ${dateTimeFormat('relative', activesearchpatientdocsItem.lastupdated)}',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: const Color(0xFF818181),
                                                                                              fontSize: 10.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                );
                                                              },
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'PATIENT_EXPLORER_CREATE_NOTE_BTN_ON_TAP');
                                                                  if (valueOrDefault(
                                                                              currentUserDocument?.baaSignature,
                                                                              '') !=
                                                                          '') {
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');

                                                                    var sessionNotesRecordReference =
                                                                        SessionNotesRecord
                                                                            .collection
                                                                            .doc();
                                                                    await sessionNotesRecordReference
                                                                        .set(
                                                                            createSessionNotesRecordData(
                                                                      patientDocument:
                                                                          activesearchpatientdocsItem
                                                                              .reference,
                                                                      user:
                                                                          currentUserReference,
                                                                      rawNoteTitle:
                                                                          'Untitled Note',
                                                                    ));
                                                                    _model.quickNoteActiveSearchMobile =
                                                                        SessionNotesRecord.getDocumentFromData(
                                                                            createSessionNotesRecordData(
                                                                              patientDocument: activesearchpatientdocsItem.reference,
                                                                              user: currentUserReference,
                                                                              rawNoteTitle: 'Untitled Note',
                                                                            ),
                                                                            sessionNotesRecordReference);
                                                                    logFirebaseEvent(
                                                                        'Button_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'NoteEditor',
                                                                      queryParameters:
                                                                          {
                                                                        'notedocument':
                                                                            serializeParam(
                                                                          _model
                                                                              .quickNoteActiveSearchMobile,
                                                                          ParamType
                                                                              .Document,
                                                                        ),
                                                                        'patientdoc':
                                                                            serializeParam(
                                                                          activesearchpatientdocsItem,
                                                                          ParamType
                                                                              .Document,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        'notedocument':
                                                                            _model.quickNoteActiveSearchMobile,
                                                                        'patientdoc':
                                                                            activesearchpatientdocsItem,
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
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'Button_bottom_sheet');
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          const Color(
                                                                              0x2D000000),
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return GestureDetector(
                                                                          onTap: () => _model.unfocusNode.canRequestFocus
                                                                              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                              : FocusScope.of(context).unfocus(),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                SizedBox(
                                                                              height: MediaQuery.sizeOf(context).height * 1.0,
                                                                              child: const BusinessAssociateAgreementWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  }

                                                                  setState(
                                                                      () {});
                                                                },
                                                                text:
                                                                    'Create Note',
                                                                icon: const Icon(
                                                                  Icons
                                                                      .add_sharp,
                                                                  size: 15.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: Colors
                                                                      .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: const Color(
                                                                            0xFF646464),
                                                                        fontSize:
                                                                            14.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Color(
                                                                        0xFFCECECE),
                                                                    width: 1.2,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10000.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
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
          ],
        ),
      ),
    );
  }
}
