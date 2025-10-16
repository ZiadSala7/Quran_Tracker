import 'package:quran_tracker/constants.dart';
import 'package:quran_tracker/core/utils/app_assets.dart';

class AzkarModel {
  final String logo, name;
  final List<String> azkarList;

  AzkarModel({required this.name, required this.logo, required this.azkarList});
}

List<AzkarModel> azkarModels = [
  AzkarModel(
    logo: AppAssets.assetsSabahLogo,
    azkarList: azkarElsabah,
    name: 'أذكار الصباح',
  ),
  AzkarModel(
    logo: AppAssets.assetsMasaaLogo2Rmv,
    azkarList: azkarElmasaa,
    name: 'أذكار المساء',
  ),
  AzkarModel(
    logo: AppAssets.assetsSlah,
    azkarList: azkarBaadElsalah,
    name: 'أذكار بعد الصلاة',
  ),
  AzkarModel(
    logo: AppAssets.assetsNawmLogo,
    azkarList: azkarElnawm,
    name: 'أذكار قبل النوم',
  ),
];
