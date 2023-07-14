import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../utility/controller/pdf_custom_controller.dart';
import '../utility/url_validator.dart';
import '../utility/validator.dart';

final class PDFView extends StatefulWidget {
  const PDFView(
      {super.key,
      required this.url,
      required this.customController,
      this.validator});

  /// It created for web url
  final String url;
  final Validator? validator;

  final PDFCustomController customController;

  @override
  State<PDFView> createState() => _PDFViewState();
}

class _PDFViewState extends State<PDFView> {
  late final PdfViewerController _pdfViewerController;

  bool _isValidate = false;
  @override
  void initState() {
    super.initState();
    final controller = widget.customController;
    if (controller is SyncfusionPDFController) {
      _pdfViewerController = controller.pdfController;
    }
    final validator = widget.validator ?? URLValidator(widget.url);
    _isValidate = validator.validate();
  }

  @override
  void dispose() {
    super.dispose();
    _pdfViewerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isValidate
        ? SfPdfViewer.network(
            widget.url,
            controller: _pdfViewerController,
          )
        : const Placeholder();
  }
}
