import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'subscription_plans_model.dart';
export 'subscription_plans_model.dart';

class SubscriptionPlansWidget extends StatefulWidget {
  const SubscriptionPlansWidget({super.key});

  @override
  _SubscriptionPlansWidgetState createState() =>
      _SubscriptionPlansWidgetState();
}

class _SubscriptionPlansWidgetState extends State<SubscriptionPlansWidget> {
  late SubscriptionPlansModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubscriptionPlansModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.8,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subscription Plans',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          color: const Color(0xFF646464),
                          fontSize: 24.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'SUBSCRIPTION_PLANS_Icon_gz9lhaud_ON_TAP');
                      logFirebaseEvent('Icon_bottom_sheet');
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                      color: Color(0xFF556169),
                      size: 24.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Text(
                  'Affordable monthly and annual packages designed to streamline documentation at all patient loads',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Manrope',
                        color: const Color(0xFF969696),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => Container(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 20.0,
                                color: Color(0xB5DDE2F0),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: valueOrDefault(
                                          currentUserDocument?.subscriptionType,
                                          '') ==
                                      'free'
                                  ? const Color(0xFFCCD1DF)
                                  : const Color(0x00FFFFFF),
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Opacity(
                                  opacity: 0.7,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/3d-construction-abstract-fluid-glass-shapes-1.png',
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 150.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  valueOrDefault(
                                              currentUserDocument
                                                  ?.subscriptionType,
                                              '') ==
                                          'free'
                                      ? 'Your Current Plan'
                                      : 'Free Plan',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF969696),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Cognitiv.ly Lite',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF646464),
                                          fontSize: 20.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'Free',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF646464),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'The lite plan limits registration of up to 3 patient profiles associated with a single account + a max of 10 total notes across all accounts',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF828282),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.5,
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => Container(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 20.0,
                                color: Color(0xB5DDE2F0),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: valueOrDefault<Color>(
                                valueOrDefault(
                                            currentUserDocument
                                                ?.subscriptionType,
                                            '') ==
                                        'individual'
                                    ? const Color(0xFFCCD1DF)
                                    : const Color(0x00FFFFFF),
                                Colors.white,
                              ),
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/3d-construction-abstract-geometrical-composition-made-of-glass.png',
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 150.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Text(
                                  valueOrDefault(
                                              currentUserDocument
                                                  ?.subscriptionType,
                                              '') ==
                                          'individual'
                                      ? 'Your Current Plan'
                                      : 'Individual Plan',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF969696),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Cognitiv.ly Practice',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF646464),
                                          fontSize: 20.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    '\$25 USD/month',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF646464),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'An individual license for 1 practitioner, granting unlimited patient profile generation, AI-powered note-taking capabilities, treatment planning, and session audio recordings',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF828282),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.5,
                                        ),
                                  ),
                                ),
                                if (valueOrDefault(
                                        currentUserDocument?.subscriptionType,
                                        '') !=
                                    'individual')
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'SUBSCRIPTION_PLANS_SUBSCRIBE_BTN_ON_TAP');
                                        logFirebaseEvent('Button_backend_call');
                                        _model.apiResultw6p =
                                            await StripePaymentLinkGenerationCall
                                                .call(
                                          orderId: currentUserReference?.id,
                                          subscriptionType: 'individual',
                                          pricingId:
                                              'price_1O4bEgLwmdmcxU7AciSS7DGv',
                                        );
                                        if ((_model.apiResultw6p?.succeeded ??
                                            true)) {
                                          logFirebaseEvent(
                                              'Button_launch_u_r_l');
                                          await launchURL(
                                              StripePaymentLinkGenerationCall
                                                  .paymentlink(
                                            (_model.apiResultw6p?.jsonBody ??
                                                ''),
                                          )!);
                                          logFirebaseEvent(
                                              'Button_bottom_sheet');
                                          Navigator.pop(context);
                                        }

                                        setState(() {});
                                      },
                                      text: 'Subscribe',
                                      icon: const Icon(
                                        Icons.arrow_forward,
                                        size: 18.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.white,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
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
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Color(0xFFB8B8B8),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => Container(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 20.0,
                                color: Color(0xB5DDE2F0),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                              color: valueOrDefault<Color>(
                                valueOrDefault(
                                            currentUserDocument
                                                ?.subscriptionType,
                                            '') ==
                                        'enterprise'
                                    ? const Color(0xFFCCD1DF)
                                    : const Color(0x00FFFFFF),
                                Colors.white,
                              ),
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/3d-construction-abstract-glass-head-silhouette-1.png',
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 150.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Text(
                                  valueOrDefault(
                                              currentUserDocument
                                                  ?.subscriptionType,
                                              '') ==
                                          'enterprise'
                                      ? 'Your Current Plan'
                                      : 'Enterprise Plan',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF969696),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Cognitiv.ly Enterprise',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF646464),
                                          fontSize: 20.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    '\$80 USD/month',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF646464),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'A single comprehensive license that grants unlimited core features in Cognitiv.ly Practice for all practitioners under your enterprise',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: const Color(0xFF828282),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 1.5,
                                        ),
                                  ),
                                ),
                                if (valueOrDefault(
                                        currentUserDocument?.subscriptionType,
                                        '') !=
                                    'enterprise')
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'SUBSCRIPTION_PLANS_SUBSCRIBE_BTN_ON_TAP');
                                        logFirebaseEvent('Button_backend_call');
                                        _model.apiResultw6pCopy =
                                            await StripePaymentLinkGenerationCall
                                                .call(
                                          orderId: currentUserReference?.id,
                                          subscriptionType: 'enterprise',
                                          pricingId:
                                              'price_1O4bFjLwmdmcxU7ASYtmI2Da',
                                        );
                                        if ((_model
                                                .apiResultw6pCopy?.succeeded ??
                                            true)) {
                                          logFirebaseEvent(
                                              'Button_launch_u_r_l');
                                          await launchURL(
                                              StripePaymentLinkGenerationCall
                                                  .paymentlink(
                                            (_model.apiResultw6pCopy
                                                    ?.jsonBody ??
                                                ''),
                                          )!);
                                          logFirebaseEvent(
                                              'Button_bottom_sheet');
                                          Navigator.pop(context);
                                        }

                                        setState(() {});
                                      },
                                      text: 'Subscribe',
                                      icon: const Icon(
                                        Icons.arrow_forward_sharp,
                                        size: 18.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.white,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
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
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Color(0xFFB8B8B8),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
