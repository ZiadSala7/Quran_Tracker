import '../../../core/utils/app_assets.dart';

class BooksModel {
  final String name, logo, path;

  BooksModel({required this.name, required this.logo, required this.path});
}

List<BooksModel> books = [
  BooksModel(
    name: 'الأربعون النووية',
    path: AppAssets.assetsBooksFourty,
    logo: AppAssets.assetsNawawy,
  ),
  BooksModel(
    name: 'الفقه الميسر',
    path: AppAssets.assetsBooksFeqh,
    logo: AppAssets.assetsFeqh,
  ),
  BooksModel(
    name: 'أصول الايمان',
    path: AppAssets.assetsBooksOsolEman,
    logo: AppAssets.assetsOsol,
  ),
  BooksModel(
    name: 'الرحيق المختوم',
    path: AppAssets.assetsBooksRaheeq,
    logo: AppAssets.assetsRaheeq,
  ),
];
