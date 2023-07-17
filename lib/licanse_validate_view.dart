import 'package:flutter/material.dart';
import 'package:vbtapp/utility/controller/pdf_custom_controller.dart';
import 'package:vbtapp/utility/point_validator.dart';
import 'package:vbtapp/widget/pdf_view.dart';

class LicenseValidateView extends StatefulWidget {
  const LicenseValidateView({super.key});

  @override
  State<LicenseValidateView> createState() => _LicenseValidateViewState();
}

class _LicenseValidateViewState extends State<LicenseValidateView> {
  final sampleUrl =
      'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PDFView(
        url: sampleUrl,
        validator: const PointValidator('a'),
        customController: SyncfusionPDFController(),
      ),
    );
  }
}
