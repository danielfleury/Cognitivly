import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'business_associate_agreement_model.dart';
export 'business_associate_agreement_model.dart';

class BusinessAssociateAgreementWidget extends StatefulWidget {
  const BusinessAssociateAgreementWidget({super.key});

  @override
  _BusinessAssociateAgreementWidgetState createState() =>
      _BusinessAssociateAgreementWidgetState();
}

class _BusinessAssociateAgreementWidgetState
    extends State<BusinessAssociateAgreementWidget> {
  late BusinessAssociateAgreementModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BusinessAssociateAgreementModel());

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

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: const BoxDecoration(
        color: Color(0xBEFFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.95,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: GradientText(
                        'Business Associate Agreement',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              color: const Color(0xFF4F4F4F),
                              fontSize: 30.0,
                              fontWeight: FontWeight.w100,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                        colors: const [Color(0xFF193D7B), Color(0xFF6C95D7)],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: GradientText(
                        'Asserting our legal and technical commitment to PHI security and HIPAA compliance',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              color: const Color(0xFF5E5E5E),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                        colors: const [Color(0xFF222D93), Color(0xFF6CA4D7)],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        height: MediaQuery.sizeOf(context).height * 0.45,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 20.0,
                              color: Color(0xFFDDDFEA),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFF8FBFF),
                              Color(0xFFE9F4FF),
                              Color(0xC1E2E7FF),
                              Color(0xFFF9FBFF)
                            ],
                            stops: [0.0, 0.3, 0.6, 1.0],
                            begin: AlignmentDirectional(0.64, -1.0),
                            end: AlignmentDirectional(-0.64, 1.0),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  'This BUSINESS ASSOCIATE AGREEMENT (the “BAA”) is made and entered into as of ${dateTimeFormat('yMd', getCurrentTimestamp)}, by and between ${valueOrDefault(currentUserDocument?.practiceName, '')} and Cognitiv.ly, a C Corporation organized under the laws of Delaware (“Business Associate”), in accordance with the meaning given to those terms at 45 CFR §164.501. In this BAA, Covered Entity and Business Associate are each a “Party” and, collectively, are the “Parties”. ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF323232),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                        lineHeight: 1.8,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  'Background',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF646464),
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
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
                                  'I.  Covered Entity is either a “covered entity” or “business associate” of a covered entity as each are defined under the Health Insurance Portability and Accountability Act of 1996, Public Law 104-191, as amended by the HITECH Act (as defined below) and the related regulations promulgated by HHS (as defined below) (collectively, “HIPAA”) and, as such, is required to comply with HIPAA’s provisions regarding the confidentiality and privacy of Protected Health Information (as defined below); ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF323232),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
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
                                  'II. The Parties have entered into or will enter into one or more agreements under which Business Associate provides or will provide certain specified services to Covered Entity (collectively, the “Agreement”); ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF323232),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
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
                                  'III. In providing services pursuant to the Agreement, Business Associate will have access to redacted Protected Health Information for the sole purpose of processing in an intelligent language algorithm; ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF323232),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
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
                                  'IV. By providing the services pursuant to the Agreement, Business Associate will become a “business associate” of the Covered Entity as such term is defined under HIPAA; ',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF323232),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
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
                                  'V. Both Parties are committed to complying with all federal and state laws governing the confidentiality and privacy of health information, including, but not limited to, the Standards for Privacy of Individually Identifiable Health Information found at 45 CFR Part 160 and Part 164, Subparts A and E (collectively, the “Privacy Rule”); and',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF323232),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
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
                                  'VI. Both Parties intend to protect the privacy and provide for the security of Protected Health Information disclosed to Business Associate pursuant to the terms of this Agreement, HIPAA and other applicable laws.',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF323232),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  'Agreement',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF646464),
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
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
                                  'NOW, THEREFORE, in consideration of the mutual covenants and conditions contained herein and the continued provision of PHI by Covered Entity to Business Associate under the Agreement in reliance on this BAA, the Parties agree as follows:\n\n1, Definitions. For purposes of this BAA, the Parties give the following meaning to each of the terms in this Section 1 below. Any capitalized term used in this BAA, but not otherwise defined, has the meaning given to that term in the Privacy Rule or pertinent law. \n\nA. “Affiliate” means a subsidiary or affiliate of Covered Entity that is, or has been, considered a covered entity, as defined by HIPAA.\n\nB. “Breach” means the acquisition, access, use, or disclosure of PHI in a manner not permitted under the Privacy Rule which compromises the security or privacy of the PHI, as defined in 45 CFR §164.402.\n\nC. “Breach Notification Rule” means the portion of HIPAA set forth in Subpart D of 45 CFR Part 164.\n\nD. “Data Aggregation” means, with respect to PHI created or received by Business Associate in its capacity as the “business associate” under HIPAA of Covered Entity, the combining of such PHI by Business Associate with the PHI received by Business Associate in its capacity as a business associate of one or more other “covered entity” under HIPAA, to permit data analyses that relate to the Health Care Operations (defined below) of the respective covered entities. The meaning of “data aggregation” in this BAA shall be consistent with the meaning given to that term in the Privacy Rule.\n\nE. “Designated Record Set” has the meaning given to such term under the Privacy Rule, including 45 CFR §164.501.B.\n\nF. “De-Identify” means to alter the PHI such that the resulting information meets the requirements described in 45 CFR §§164.514(a) and (b).\n\nG. “Electronic PHI” means any PHI maintained in or transmitted by electronic media as defined in 45 CFR §160.103.\n\nH. “Health Care Operations” has the meaning given to that term in 45 CFR §164.501.\n\nI. “HHS” means the U.S. Department of Health and Human Services.\n\nJ. “HITECH Act” means the Health Information Technology for Economic and Clinical Health Act, enacted as part of the American Recovery and Reinvestment Act of 2009, Public Law 111-005.\n\nK. “Individual” has the same meaning given to that term i in 45 CFR §§164.501 and 160.130 and includes a person who qualifies as a personal representative in accordance with 45 CFR §164.502(g).\n\nL. “Privacy Rule” means that portion of HIPAA set forth in 45 CFR Part 160 and Part 164, Subparts A and E.\n\nM. “Protected Health Information” or “PHI” has the meaning given to the term “protected health information” in 45 CFR §§164.501 and 160.103, limited to the information created or received by Business Associate from or on behalf of Covered Entity.\n\nN. “Security Incident” means the attempted or successful unauthorized access, use, disclosure, modification, or destruction of information or interference with system operations in an information system.\n\nO. “Security Rule” means the Security Standards for the Protection of Electronic Health Information provided in 45 CFR Part 160 & Part 164, Subparts A and C.\n\nP. “Unsecured Protected Health Information” or “Unsecured PHI” means any “protected health information” as defined in 45 CFR §§164.501 and 160.103 that is not rendered unusable, unreadable or indecipherable to unauthorized individuals through the use of a technology or methodology specified by the HHS Secretary in the guidance issued pursuant to the HITECH Act and codified at 42 USC §17932(h).\n\n2. Use and Disclosure of PHI.\n\nA. Except as otherwise provided in this BAA, Business Associate (Cognitiv.ly) may use or disclose Protected Health Information (PHI) as reasonably necessary to provide the services described in the Agreement to Covered Entity, incorporating advanced security and data handling measures including but not limited to HIPAA, GDPR, and Cloud Processing Addendums with Google Cloud, and data loss prevention mechanisms. Cognitiv.ly ensures that all systems are constantly audited for security vulnerabilities.\n\nB. Except as otherwise limited by this BAA or federal or state law, Covered Entity authorizes Business Associate to use the PHI in its possession for the proper management and administration of Business Associate’s business and to carry out its legal responsibilities, with the understanding that PHI is de-identified prior to processing, using a PHI-redaction function that removes 18 common identifiers from both audio-transcribed and typed notes.\n\nC. Business Associate will not use or disclose PHI in a manner other than as provided in this BAA, as permitted under the Privacy Rule, or as required by law. Business Associate will use or disclose PHI, to the extent practicable, as a limited data set or limited to the minimum necessary amount of PHI to carry out the intended purpose of the use or disclosure, in accordance with Section 13405(b) of the HITECH Act and any of the act’s implementing regulations adopted by HHS. Additionally, upstream NLP tasks and other language modeling processes will only have access to fully redacted data.\n\nD. Upon request, Business Associate will make available to Covered Entity any of Covered Entity’s PHI that Business Associate or any of its agents or subcontractors have in their possession. Following transcription of any audio recording, the source .mp3 file is immediately deleted from cloud storage to further ensure data security.\n\nE. Business Associate may use PHI to report violations of law to appropriate Federal and State authorities, consistent with 45 CFR §164.502(j)(1). The PHI redaction algorithm, hosted via Pangea Cloud Security services, operates as a first-pass before any language modeling, ensuring that even in the event of a data breach, the data would be difficult to trace back to a patient\'s profile.\n\n3. Safeguards Against Misuse of PHI. Business Associate will use appropriate safeguards to prevent the use or disclosure of PHI other than as provided by the Agreement or this BAA and Business Associate agrees to implement administrative, physical, and technical safeguards that reasonably and appropriately protect the confidentiality, integrity and availability of the Electronic PHI that it creates, receives, maintains or transmits on behalf of Covered Entity. Business Associate agrees to take reasonable steps, including providing adequate training to its employees to ensure compliance with this BAA and to ensure that the actions or omissions of its employees or agents do not cause Business Associate to breach the terms of this BAA. \n\n4. Reporting Disclosures of PHI and Security Incidents. Business Associate will report to Covered Entity in writing any use or disclosure of PHI not provided for by this BAA of which it becomes aware and Business Associate agrees to report to Covered Entity any Security Incident affecting Electronic PHI of Covered Entity of which it becomes aware. Business Associate agrees to report any such event within five business days of becoming aware of the event.\n\n5. Reporting Breaches of Unsecured PHI. Business Associate will notify Covered Entity in writing promptly upon the discovery of any Breach of Unsecured PHI in accordance with the requirements set forth in 45 CFR §164.410, but in no case later than 30 calendar days after discovery of a Breach. Business Associate will reimburse Covered Entity for any costs incurred by it in complying with the requirements of Subpart D of 45 CFR §164 that are imposed on Covered Entity as a result of a Breach committed by Business Associate. \n\n6. Mitigation of Disclosures of PHI. Business Associate will take reasonable measures to mitigate, to the extent practicable, any harmful effect that is known to Business Associate of any use or disclosure of PHI by Business Associate or its agents or subcontractors in violation of the requirements of this BAA.\n\n7. Agreements with Agents or Subcontractors. Business Associate will ensure that any of its agents or subcontractors that have access to, or to which Business Associate provides, PHI agree in writing to the restrictions and conditions concerning uses and disclosures of PHI contained in this BAA and agree to implement reasonable and appropriate safeguards to protect any Electronic PHI that it creates, receives, maintains or transmits on behalf of Business Associate or, through the Business Associate, Covered Entity. Business Associate shall notify Covered Entity, or upstream Business Associate, of all subcontracts and agreements relating to the Agreement, where the subcontractor or agent receives PHI as described in section 1.M. of this BAA. Such notification shall occur within 30 (thirty) calendar days of the execution of the subcontract by placement of such notice on the Business Associate’s primary website. Business Associate shall ensure that all subcontracts and agreements provide the same level of privacy and security as this BAA. \n\n9. Access to PHI by Individuals. \n\nA. Upon request, Business Associate agrees to furnish Covered Entity with copies of the PHI maintained by Business Associate in a Designated Record Set in the time and manner Page 5 of 9 designated by Covered Entity to enable Covered Entity to respond to an Individual’s request for access to PHI under 45 CFR §164.524. \n\nB. In the event any Individual or personal representative requests access to the Individual’s PHI directly from Business Associate, Business Associate within ten business days, will forward that request to Covered Entity. Any disclosure of, or decision not to disclose, the PHI requested by an Individual or a personal representative and compliance with the requirements applicable to an Individual’s right to obtain access to PHI shall be the sole responsibility of Covered Entity. \n\n10. Amendment of PHI. \n\nA. Upon request and instruction from Covered Entity, Business Associate will amend PHI or a record about an Individual in a Designated Record Set that is maintained by, or otherwise within the possession of, Business Associate as directed by Covered Entity in accordance with procedures established by 45 CFR §164.526. Any request by Covered Entity to amend such information will be completed by Business Associate within 15 business days of Covered Entity’s request. \n\nB. In the event that any Individual requests that Business Associate amend such Individual’s PHI or record in a Designated Record Set, Business Associate within ten business days will forward this request to Covered Entity. Any amendment of, or decision not to amend, the PHI or record as requested by an Individual and compliance with the requirements applicable to an Individual’s right to request an amendment of PHI will be the sole responsibility of Covered Entity. \n\n10. Amendment of PHI. \n\nA. Upon request and instruction from Covered Entity, Business Associate will amend PHI or a record about an Individual in a Designated Record Set that is maintained by, or otherwise within the possession of, Business Associate as directed by Covered Entity in accordance with procedures established by 45 CFR §164.526. Any request by Covered Entity to amend such information will be completed by Business Associate within 15 business days of Covered Entity’s request. \n\nB. In the event that any Individual requests that Business Associate amend such Individual’s PHI or record in a Designated Record Set, Business Associate within ten business days will forward this request to Covered Entity. Any amendment of, or decision not to amend, the PHI or record as requested by an Individual and compliance with the requirements applicable to an Individual’s right to request an amendment of PHI will be the sole responsibility of Covered Entity. \n\n11. Accounting of Disclosures.\n\nA. Business Associate will document any disclosures of PHI made by it to account for such disclosures as required by 45 CFR §164.528(a). Business Associate also will make available information related to such disclosures as would be required for Covered Entity to respond to a request for an accounting of disclosures in accordance with 45 CFR §164.528. At a minimum, Business Associate will furnish Covered Entity the following with respect to any covered disclosures by Business Associate: (i) the date of disclosure of PHI; (ii) the name of the entity or person who received PHI, and, if known, the address of such entity or person; (iii) a brief description of the PHI disclosed; and (iv) a brief statement of the purpose of the disclosure which includes the basis for such disclosure. \n\nB. Business Associate will furnish to Covered Entity information collected in accordance with this Section 10, within ten business days after written request by Covered Entity, to permit Covered Entity to make an accounting of disclosures as required by 45 CFR §164.528, or in the event that Covered Entity elects to provide an Individual with a list of its business associates, Business Associate will provide an accounting of its disclosures of PHI upon request of the Individual, if and to the extent that such accounting is required under the HITECH Act or under HHS regulations adopted in connection with the HITECH Act. C. In the event an Individual delivers the initial request for an accounting directly to Business Associate, Business Associate will within ten business days forward such request to Covered Entity.\n\n12. Availability of Books and Records.\nBusiness Associate will make available its internal practices, books, agreements, records, and policies and procedures relating to the use and disclosure of PHI, upon request, to the Secretary of HHS for purposes of determining Covered Entity’s and Business Associate’s compliance with HIPAA, and this BAA.\n\n13. Responsibilities of Covered Entity.\n\nWith regard to the use and/or disclosure of Protected Health Information by Business Associate, Covered Entity agrees to:\n\nA. Notify Business Associate of any limitation(s) in its notice of privacy practices in accordance with 45 CFR §164.520, to the extent that such limitation may affect Business Associate’s use or disclosure of PHI.\n\nB. Notify Business Associate of any changes in, or revocation of, permission by an Individual to use or disclose Protected Health Information, to the extent that such changes may affect Business Associate’s use or disclosure of PHI.\n\nC. Notify Business Associate of any restriction to the use or disclosure of PHI that Covered Entity has agreed to in accordance with 45 CFR §164.522, to the extent that such restriction may affect Business Associate’s use or disclosure of PHI.\n\nD. Except for data aggregation or management and administrative activities of Business Associate, Covered Entity shall not request Business Associate to use or disclose PHI in any manner that would not be permissible under HIPAA if done by Covered Entity.\n\n14. Data Ownership.\n\nBusiness Associate’s data stewardship does not confer data ownership rights on Business Associate with respect to any data shared with it under the Agreement, including any and all forms thereof.\n\n15. Term and Termination.\n\nA. This BAA will become effective on the date first written above, and will continue in effect until all obligations of the Parties have been met under the Agreement and under this BAA.\n\nB. Covered Entity may terminate this BAA, the Agreement, and any other related agreements if Covered Entity determines that Business Associate has breached a material term of this BAA and Business Associate has failed to cure that material breach, to Covered Entity’s reasonable satisfaction, within 30 days after written notice from Covered Entity. Covered Entity may report the problem to the Secretary of HHS if termination is not feasible.\n\nC. If Business Associate determines that Covered Entity has breached a material term of this BAA, Business Associate will provide Covered Entity with written notice of the existence of the breach and shall provide Covered Entity with 30 days to cure the breach. Covered Entity’s failure to cure the breach within the 30-day period will be grounds for immediate termination of the Agreement and this BAA by Business Associate. Business Associate may report the breach to HHS.\n\nD. Upon termination of the Agreement or this BAA for any reason, all PHI maintained by Business Associate will be returned to Covered Entity or destroyed by Business Associate. Business Associate will not retain any copies of such information. This provision will apply to PHI in the possession of Business Associate’s agents and subcontractors. If return or destruction of the PHI is not feasible, in Business Associate’s reasonable judgment, Business Associate will furnish Covered Entity with notification, in writing, of the conditions that make return or destruction infeasible. Upon mutual agreement of the Parties that return or destruction of the PHI is infeasible, Business Associate will extend the protections of this BAA to such information for as long as Business Associate retains such information and will limit further uses and disclosures to those purposes that make the return or destruction of the information not feasible. The Parties understand that this Section 14.D. will survive any termination of this BAA.\n\nE. Deleting an Account: Immediate Removal of Associated Data. Upon the deletion of an account by a therapist or other authorized user, Business Associate will immediately remove all associated patient data tagged with that account from its systems, ensuring the complete erasure of PHI and any related data, in compliance with privacy and data protection standards.\n\n16. Effect of BAA.\n\nA. This BAA is a part of and subject to the terms of the Agreement, except that to the extent any terms of this BAA conflict with any term of the Agreement, the terms of this BAA will govern.\n\nB. Except as expressly stated in this BAA or as provided by law, this BAA will not create any rights in favor of any third party.\n\n17. Regulatory References.\nA reference in this BAA to a section in HIPAA means the section as in effect or as amended at the time.\n\n18. Notices.\nAll notices, requests and demands or other communications to be given under this BAA to a Party will be made via either first class mail, registered or certified or express courier, or electronic mail to the Party’s following address: cognitivly@gmail.com',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: const Color(0xFF323232),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 20.0,
                              color: Color(0xFFDDDFEA),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFF8FBFF),
                              Color(0xFFE9F4FF),
                              Color(0xC1E2E7FF),
                              Color(0xFFF9FBFF)
                            ],
                            stops: [0.0, 0.3, 0.6, 1.0],
                            begin: AlignmentDirectional(0.64, -1.0),
                            end: AlignmentDirectional(-0.64, 1.0),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.close_rounded,
                                color: Color(0xFF646464),
                                size: 28.0,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 70.0,
                                        decoration: const BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: ClipRect(
                                          child: Signature(
                                            controller:
                                                _model.signatureController ??=
                                                    SignatureController(
                                              penStrokeWidth: 2.0,
                                              penColor: const Color(0xFF2C2C2C),
                                              exportBackgroundColor:
                                                  Colors.white,
                                            ),
                                            backgroundColor: const Color(0x00FFFFFF),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 1.5,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF969696),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Text(
                                          'Draw signature with mouse or touchscreen',
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
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                              child: Checkbox(
                                                value: _model.checkboxValue ??=
                                                    false,
                                                onChanged: (newValue) async {
                                                  setState(() =>
                                                      _model.checkboxValue =
                                                          newValue!);
                                                },
                                                activeColor: const Color(0xFF291E8C),
                                                checkColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                              ),
                                            ),
                                            Text(
                                              'I agree to the terms listed as the covered entity of this agreement',
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
                                          ],
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
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'BUSINESS_ASSOCIATE_AGREEMENT_EXIT_BTN_ON');
                              logFirebaseEvent('Button_bottom_sheet');
                              Navigator.pop(context);
                            },
                            text: 'Exit',
                            icon: const Icon(
                              Icons.arrow_back_sharp,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              padding: const EdgeInsets.all(30.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0x00FFFFFF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: const Color(0xC41A328B),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                color: Color(0x8485A0C3),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            showLoadingIndicator: false,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'BUSINESS_ASSOCIATE_AGREEMENT_I_AGREE_BTN');
                                if (_model.checkboxValue!) {
                                  logFirebaseEvent('Button_upload_signature');
                                  final signatureImage = await _model
                                      .signatureController!
                                      .toPngBytes();
                                  if (signatureImage == null) {
                                    showUploadMessage(
                                      context,
                                      'Signature is empty.',
                                    );
                                    return;
                                  }
                                  showUploadMessage(
                                    context,
                                    'Uploading signature...',
                                    showLoading: true,
                                  );
                                  final downloadUrl = (await uploadData(
                                      getSignatureStoragePath(),
                                      signatureImage));

                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  if (downloadUrl != null) {
                                    setState(() => _model.uploadedSignatureUrl =
                                        downloadUrl);
                                    showUploadMessage(
                                      context,
                                      'Success!',
                                    );
                                  } else {
                                    showUploadMessage(
                                      context,
                                      'Failed to upload signature.',
                                    );
                                    return;
                                  }

                                  logFirebaseEvent('Button_backend_call');

                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    baaSignature: _model.uploadedSignatureUrl,
                                    signedBa: true,
                                  ));
                                  logFirebaseEvent('Button_bottom_sheet');
                                  Navigator.pop(context);
                                } else {
                                  logFirebaseEvent('Button_alert_dialog');
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title:
                                            const Text('Please Agree to the Terms'),
                                        content: const Text(
                                            'To proceed with Cognitiv.ly, please review and confirm your agreement via the checkbox'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
                              text: 'I agree',
                              icon: const FaIcon(
                                FontAwesomeIcons.signature,
                              ),
                              options: FFButtonOptions(
                                padding: const EdgeInsets.all(30.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0x00FFFFFF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: const Color(0xC41A328B),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                                elevation: 0.0,
                                borderSide: const BorderSide(
                                  color: Color(0x84254C7F),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              showLoadingIndicator: false,
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
        ],
      ),
    );
  }
}
