import 'package:domestika/utils/images.dart';

class Categories {
  String imageName;
  String name;
  String jobcount;

  Categories({
    required this.imageName,
    required this.name,
    required this.jobcount
  });

  static List<Categories> category = [
    Categories(
      imageName: MyImages.iconCategories1,
      name: "Computer", 
      jobcount: "2k job"
    ),

    Categories(
      imageName: MyImages.iconCategories2,
      name: "Art & Illustration", 
      jobcount: "1k job",
    ),

    Categories(
      imageName: MyImages.iconCategories3,
      name: "Computer Science", 
      jobcount: "12k job",
    ),
  ];
}