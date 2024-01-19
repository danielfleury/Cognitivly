import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cancel_subscription_model.dart';
export 'cancel_subscription_model.dart';

class CancelSubscriptionWidget extends StatefulWidget {
  const CancelSubscriptionWidget({super.key});

  @override
  _CancelSubscriptionWidgetState createState() =>
      _CancelSubscriptionWidgetState();
}

class _CancelSubscriptionWidgetState extends State<CancelSubscriptionWidget> {
  late CancelSubscriptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancelSubscriptionModel());

    _model.subscriptioncancelconfirmController ??= TextEditingController();
    _model.subscriptioncancelconfirmFocusNode ??= FocusNode();

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
          borderRadius: BorderRadius.circular(20.0),
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
                    'Are you sure you want to cancel?',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          color: const Color(0xFF646464),
                          fontSize: 26.0,
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
                          'CANCEL_SUBSCRIPTION_Icon_fwlicoys_ON_TAP');
                      logFirebaseEvent('Icon_bottom_sheet');
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Text(
                  'We hate to see you go! Cancelling your subscription will downgrade you to the "Lite" plan, and you will not be able to add additional patient notes if you are already beyond the 3 note limit. To confirm cancellation, type "Cancel my subscription"',
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
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        child: TextFormField(
                          controller:
                              _model.subscriptioncancelconfirmController,
                          focusNode: _model.subscriptioncancelconfirmFocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Confirmation Statement',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: const Color(0xFF646464),
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                            hintText: 'Cancel my subscription',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: const Color(0xFF969696),
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFF969696),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                          maxLines: 2,
                          validator: _model
                              .subscriptioncancelconfirmControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'CANCEL_SUBSCRIPTION_CANCEL_SUBSCRIPTION_');
                    var shouldSetState = false;
                    if (_model.subscriptioncancelconfirmController.text ==
                        'Cancel my subscription') {
                      logFirebaseEvent('Button_backend_call');
                      _model.apiResultf73 =
                          await StripeCancelSubscriptionCall.call(
                        subscriptionId: valueOrDefault(
                            currentUserDocument?.subscriptionId, ''),
                      );
                      shouldSetState = true;
                      if ((_model.apiResultf73?.succeeded ?? true)) {
                        logFirebaseEvent('Button_backend_call');

                        await currentUserReference!
                            .update(createUsersRecordData(
                          subscriptionType: 'free',
                        ));
                        logFirebaseEvent('Button_bottom_sheet');
                        Navigator.pop(context);
                        logFirebaseEvent('Button_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'We\'ve cancelled your subscription',
                              style: GoogleFonts.getFont(
                                'Manrope',
                                color: const Color(0xFFD2D2D2),
                              ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor: const Color(0xFF252525),
                          ),
                        );
                      } else {
                        if (shouldSetState) setState(() {});
                        return;
                      }
                    } else {
                      if (shouldSetState) setState(() {});
                      return;
                    }

                    if (shouldSetState) setState(() {});
                  },
                  text: 'Cancel Subscription',
                  icon: const Icon(
                    Icons.check_sharp,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    height: 50.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFFFF0F0),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Manrope',
                          color: const Color(0xFFCF3B3B),
                          fontSize: 12.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleSmallFamily),
                        ),
                    elevation: 0.0,
                    borderSide: const BorderSide(
                      color: Color(0xFFCD4646),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
