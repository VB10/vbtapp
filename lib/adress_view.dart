import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class AddressView extends StatefulWidget {
  const AddressView({super.key});

  @override
  State<AddressView> createState() => _LicenseValidateViewState();
}

class _LicenseValidateViewState extends State<AddressView> {
  final sampleUrl =
      'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf';

  late final PdfViewerController _pdfViewerController;

  @override
  void initState() {
    super.initState();
    _pdfViewerController = PdfViewerController();
  }

  @override
  void dispose() {
    super.dispose();
    _pdfViewerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.network(sampleUrl, controller: _pdfViewerController),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _pdfViewerController.nextPage();
        },
      ),
    );
  }
}
