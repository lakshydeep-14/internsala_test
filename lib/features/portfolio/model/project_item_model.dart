import 'package:internsala_test/gen/assets.gen.dart';

class ProjectItemModel {
  final String title;
  final String label1;
  final String label2Sub1;
  final String label2Sub2;
  final AssetGenImage image;

  ProjectItemModel({
    required this.image,
    required this.title,
    required this.label1,
    required this.label2Sub1,
    required this.label2Sub2,
  });
}

List<ProjectItemModel> projectItemList = [
  ProjectItemModel(
    image: Assets.images.rectangle19,
    title: 'Kemampuan Merangkum Tulisan Tulisan',
    label1: 'BAHASA SUNDA',
    label2Sub1: 'Oleh',
    label2Sub2: 'Al-Baiqi Samaan',
  ),
  ProjectItemModel(
    image: Assets.images.rectangle191,
    title: 'BAHASA SUNDA',
    label1: 'Kemampuan Merangkum Tulisan',
    label2Sub1: 'Oleh',
    label2Sub2: 'Al-Baiqi Samaan',
  ),
  ProjectItemModel(
    image: Assets.images.rectangle192,
    title: 'Oleh',
    label1: 'BAHASA SUNDA',
    label2Sub1: 'Kemampuan',
    label2Sub2: 'Al-Baiqi Samaan',
  ),
  ProjectItemModel(
    image: Assets.images.rectangle19,
    title: 'Kemampuan Merangkum Tulisan',
    label1: 'BAHASA SUNDA',
    label2Sub1: 'Oleh',
    label2Sub2: 'Al-Baiqi Samaan',
  ),
  ProjectItemModel(
    image: Assets.images.rectangle193,
    title: 'Al-Baiqi Samaan',
    label1: 'BAHASA SUNDA',
    label2Sub1: 'Oleh',
    label2Sub2: 'Al-Baiqi Samaan',
  ),
  ProjectItemModel(
    image: Assets.images.rectangle192,
    title: 'Kemampuan Merangkum Tulisan',
    label1: 'BAHASA SUNDA',
    label2Sub1: 'Oleh',
    label2Sub2: 'Al-Baiqi Samaan',
  ),
];
