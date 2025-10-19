import 'package:flutter/material.dart';

import '../../data/books_model.dart';
import '../book_display_view.dart';
import '../../../../core/utils/app_colors.dart';

class BookDetailsCard extends StatelessWidget {
  final BooksModel book;
  const BookDetailsCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => BookDisplayView(book: book)),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.grey,
        ),
        child: Column(
          children: [
            Flexible(child: Image.asset(book.logo)),
            Text(
              book.name,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
