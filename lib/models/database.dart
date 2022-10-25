import 'package:domestika/utils/images.dart';

class PostModel {
  String userImage;
  String userName;
  String hours;
  String postImage;
  String postName;
  String likecount;
  String price;
  String chegirma;
  String day;
  String level;

  PostModel({
    required this.userName,
    required this.userImage,
    required this.hours,
    required this.postImage,
    required this.postName,
    required this.likecount,
    required this.price,
    required this.chegirma,
    required this.day,
    required this.level,
  });

  static List<PostModel> posts = [
    PostModel(
      userName: "Eva Brush Artist", 
      userImage: MyImages.imageGirl, 
      hours: "23h", 
      postImage: MyImages.imagePost1, 
      postName: "PINTURA: Técnicas AVANZADAS con Acuarelas con Eva García.", 
      likecount: "(10.439)",
      price: "79,99 €", 
      chegirma: "9,99 €", 
      day: "1",
      level: "4.5",
    ),

    PostModel(
      userName: "Felipe1212", 
      userImage: MyImages.imageBoy, 
      hours: "43h",
      postImage: MyImages.imagePost2, 
      postName: "ADOBE PREMIERE PRO: De NOVATO a EXPERTO con Felipe Sanz.", 
      likecount: "(2.679)",
      price: "89,99 €", 
      chegirma: "17,99 €", 
      day: "5",
      level: "4.7",
    ),

    PostModel(
      userName: "Daniel copywritter", 
      userImage: MyImages.imageBoy,
      hours: "13h", 
      postImage: MyImages.imagePost2,
      postName: "ADOBE XD: Aprende las bases del UX y del prototipado con Daniel Sloss.", 
      likecount: "(21.031)",
      price: "249,99 €", 
      chegirma: "20,99 €", 
      day: "5",
      level: "4.1",
    ),

    PostModel(
      userName: "Daniel copywritter", 
      userImage: MyImages.imageBoy,
      hours: "13h", 
      postImage: MyImages.imagePost1, 
      postName: "PYTHON: Aprende POO (Programación Oriantada a Objetos) con Joseph Mo Amer.", 
      likecount: "(9.544)",
      price: "109,99 €", 
      chegirma: "9,99 €", 
      day: "3",
      level: "4.8",
    ),
  ];
}