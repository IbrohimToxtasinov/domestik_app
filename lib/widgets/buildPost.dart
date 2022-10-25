import 'package:domestika/models/database.dart';
import 'package:domestika/utils/colors.dart';
import 'package:domestika/utils/styles.dart';
import 'package:flutter/material.dart';

class BuildPostwidget extends StatefulWidget {
  final PostModel postModel;
  const BuildPostwidget({super.key, required this.postModel});

  @override
  State<BuildPostwidget> createState() => _BuildPostwidgetState();
}

class _BuildPostwidgetState extends State<BuildPostwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 14, bottom: 15),
      width: 303,
      height: 415,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            spreadRadius: 3,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(widget.postModel.userImage, width: 34, height: 34,),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Un curso creado por:", style: MyStyles.segoeUI400.copyWith(fontSize: 11)),
                      Text("Eva Brush Artist", style: MyStyles.segoeUI400.copyWith(fontSize: 12, fontWeight: FontWeight.w700)),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Contenido del curso:", style: MyStyles.segoeUI400.copyWith(fontSize: 11, color: MyColors.c000000.withOpacity(0.47)),),
                  Row(
                    children: [
                      const Icon(Icons.ondemand_video_sharp, size: 20),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: widget.postModel.hours,
                              style: MyStyles.segoeUI400.copyWith(fontSize: 12, fontWeight: FontWeight.w600, color: MyColors.c000000),
                            ),
                            TextSpan(
                              text: "en vídeo.", style: MyStyles.segoeUI400.copyWith(fontSize: 11, color: MyColors.c000000.withOpacity(0.47))
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 161,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(widget.postModel.postImage), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 12,right: 5),
            child: Text(widget.postModel.postName, style: MyStyles.segoeUI400.copyWith(fontWeight: FontWeight.w600, fontSize: 14,letterSpacing: 0.7),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
            child: Row(
              children: [
                Text(widget.postModel.level, style: MyStyles.segoeUI400.copyWith(fontWeight: FontWeight.w600, fontSize: 14, letterSpacing: 0.5, color: MyColors.cFCBF29),),
                const SizedBox(width: 5,),
                const Icon(Icons.star, color: MyColors.cFCBF29, size: 20,),
                const Icon(Icons.star, color: MyColors.cFCBF29, size: 20,),
                const Icon(Icons.star, color: MyColors.cFCBF29, size: 20,),
                const Icon(Icons.star, color: MyColors.cFCBF29, size: 20,),
                const Icon(Icons.star_half, color: MyColors.cFCBF29, size: 20,),
                const SizedBox(width: 5,),
                Text(widget.postModel.likecount, style: MyStyles.segoeUI400.copyWith(fontSize: 10, color: MyColors.c000000.withOpacity(0.70)),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 12),
            child: Row(
              children: [
                Text(widget.postModel.chegirma, style: MyStyles.segoeUI400.copyWith(fontSize: 23, fontWeight: FontWeight.w600, color: MyColors.c000000),),
                const SizedBox(width: 20,),
                Text(widget.postModel.price, style: MyStyles.segoeUI400.copyWith(color: MyColors.c000000.withOpacity(0.70), fontSize: 11, decoration: TextDecoration.lineThrough))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7, right: 7, top: 2),
            child: Row(
              children: [
                const Icon(Icons.access_time, color: MyColors.cF02D00, size: 16,),
                const SizedBox(width: 5,),
                Text("La oferta termina en: ${widget.postModel.day} día.", style: MyStyles.segoeUI400.copyWith(fontSize: 11, fontWeight: FontWeight.w400, color: MyColors.cF02D00),)
              ],
            ),
          ),
          Padding(
            padding: const  EdgeInsets.only(left: 14, right: 13, top: 18),
            child: Row(
              children: [
                Container(
                  width: 201,
                  height: 34,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: Offset(0.5, 0.5)
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                    color: MyColors.cF02D00
                  ),
                  child: Center(
                    child: Text("Añadir al carrito", style: MyStyles.segoeUI400.copyWith(fontWeight: FontWeight.w600, letterSpacing: 0.7, color: MyColors.cFFFFFF),),
                  ),
                ),
                const SizedBox(width: 9,),
                Container(
                  width: 46,
                  height: 34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColors.cFFFFFF,
                    border: Border.all(width: 1, color: MyColors.cF02D00)
                  ),
                  child: const Center(
                    child: Icon(Icons.favorite_border_sharp, color: MyColors.cF02D00, size: 30,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}