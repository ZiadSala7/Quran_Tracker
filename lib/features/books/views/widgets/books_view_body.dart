import 'package:flutter/material.dart';

import '../../data/books_model.dart';
import 'book_details_card.dart';

class BooksViewBody extends StatelessWidget {
  const BooksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: GridView.builder(
        itemCount: books.length,
        itemBuilder: (BuildContext context, int index) {
          return BookDetailsCard(book: books[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
