import 'package:flutter/material.dart';
import 'package:quran_tracker/core/utils/app_colors.dart';

AppBar customAppBar(String title, bool isFlex) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    flexibleSpace: isFlex ? Container(color: Colors.white) : null,
    backgroundColor: !isFlex ? AppColors.grey : null,
  );
}
