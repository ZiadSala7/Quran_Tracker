import 'package:flutter/material.dart';
import 'package:quran_tracker/core/widgets/custom_appbar.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../data/books_model.dart';

class BookDisplayView extends StatelessWidget {
  final BooksModel book;
  const BookDisplayView({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(book.name, false),
      body: SfPdfViewer.asset(book.path),
    );
  }
}
