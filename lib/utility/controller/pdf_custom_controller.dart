import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

abstract class PDFCustomController {
  void next();
  void previous();

  void dispose();
}

class VeliPDFController implements PDFCustomController {
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void next() {
    // TODO: implement next
  }

  @override
  void previous() {
    // TODO: implement previous
  }
}

class SyncfusionPDFController implements PDFCustomController {
  final PdfViewerController _pdfViewerController = PdfViewerController();

  PdfViewerController get pdfController => _pdfViewerController;

  @override
  void dispose() {
    _pdfViewerController.dispose();
  }

  @override
  void next() {
    _pdfViewerController.nextPage();
  }

  @override
  void previous() {
    _pdfViewerController.previousPage();
  }
}
