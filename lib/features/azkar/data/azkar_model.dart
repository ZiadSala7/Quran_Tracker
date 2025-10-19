import 'package:quran_tracker/constants.dart';
import 'package:quran_tracker/core/utils/app_assets.dart';

class AzkarModel {
  final String logo, name;
  final List<String> azkarList;

  AzkarModel({required this.name, required this.logo, required this.azkarList});
}

List<AzkarModel> azkarModels = [
  AzkarModel(
    logo: AppAssets.assetsSun,
    azkarList: azkarElsabah,
    name: 'أذكار الصباح',
  ),
  AzkarModel(
    logo: AppAssets.assetsMoon,
    azkarList: azkarElmasaa,
    name: 'أذكار المساء',
  ),
  AzkarModel(
    logo: AppAssets.assetsPray,
    azkarList: azkarBaadElsalah,
    name: 'أذكار بعد الصلاة',
  ),
  AzkarModel(
    logo: AppAssets.assetsSleep,
    azkarList: azkarElnawm,
    name: 'أذكار قبل النوم',
  ),
];
