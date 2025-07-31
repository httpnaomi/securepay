import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'authenticate_payment_page_model.dart';
export 'authenticate_payment_page_model.dart';

/// Create an authentication page for a mobile payment app called SecurePay
/// Mobile.
///
/// 🔝 Top Section:
/// Leave space at the top for a logo image (image widget placeholder)
///
/// Center the main content vertically below the logo
///
/// 🛡️ Authentication Card:
/// Display a rounded card with soft shadow
///
/// At the top of the card:
///
/// A blue circular icon with a white shield (security icon)
///
/// Below the icon, show:
///
/// Title: "Authenticate Payment" (bold, centered)
///
/// Amount: $15.75
///
/// Merchant: Restaurant
///
/// Use clean and muted text for amount/merchant info
///
/// 🔐 Button Section:
/// A primary button:
///
/// Text: "Authenticate with Biometrics"
///
/// Icon: Shield or fingerprint
///
/// Color: Blue, full-width, rounded corners
///
/// A secondary text button:
///
/// Text: "Cancel"
///
/// Subtle and center-aligned
///
/// 🎨 Design Style:
/// Clean and modern UI
///
/// Rounded corners, soft shadows, and generous padding
///
/// Minimalist color palette: white, blue accents, soft gray
///
/// Modern font (e.g., Poppins or Inter)
///
/// Ensure mobile responsiveness
///
/// 📌 Note: Leave placeholder at the very top for inserting a custom logo
/// image
class AuthenticatePaymentPageWidget extends StatefulWidget {
  const AuthenticatePaymentPageWidget({super.key});

  static String routeName = 'AuthenticatePaymentPage';
  static String routePath = '/authenticatePaymentPage';

  @override
  State<AuthenticatePaymentPageWidget> createState() =>
      _AuthenticatePaymentPageWidgetState();
}

class _AuthenticatePaymentPageWidgetState
    extends State<AuthenticatePaymentPageWidget> {
  late AuthenticatePaymentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthenticatePaymentPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF8F9FA),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 80),
                  child: Image.asset(
                    'assets/images/Logo.png',
                    width: 205.36,
                    height: 152.9,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(32),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          color: Color(0x1A000000),
                          offset: Offset(
                            0,
                            4,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Icon(
                                Icons.security,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Authenticate Payment',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 24,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'MWK90000',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF1A1A1A),
                                          fontSize: 32,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Amarylis Hotel',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF757575),
                                          fontSize: 16,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 8)),
                              ),
                            ].divide(SizedBox(height: 16)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Authenticate with Biometrics',
                                icon: Icon(
                                  Icons.fingerprint,
                                  size: 24,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 56,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 0),
                                  iconColor: Colors.white,
                                  color: Colors.blue,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        fontSize: 16,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                  elevation: 0,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Cancel',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 48,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 0),
                                  color: Colors.transparent,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF757575),
                                        fontSize: 16,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  elevation: 0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ].divide(SizedBox(height: 16)),
                          ),
                        ].divide(SizedBox(height: 24)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
