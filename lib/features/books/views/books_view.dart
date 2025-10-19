import 'package:flutter/material.dart';

import '../../../core/widgets/custom_appbar.dart';
import 'widgets/books_view_body.dart';

class BooksView extends StatelessWidget {
  static const String id = 'booksView';
  const BooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('المكتبة', false),
      body: BooksViewBody(),
    );
  }
}
