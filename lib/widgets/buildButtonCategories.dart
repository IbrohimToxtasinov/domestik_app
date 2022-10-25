import 'package:domestika/models/categorys.dart';
import 'package:domestika/utils/colors.dart';
import 'package:domestika/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesButton extends StatefulWidget {
  final Categories categories;
  const CategoriesButton({super.key, required this.categories});

  @override
  State<CategoriesButton> createState() => _CategoriesButtonState();
}

class _CategoriesButtonState extends State<CategoriesButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
      width: 138,
      height: 138,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: MyColors.c0062FF.withOpacity(0.13),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 59,
            height: 59,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: MyColors.c0062FF
            ),
            child: Center(child: SvgPicture.asset(widget.categories.imageName))),
          const SizedBox(height: 10,),
          Text(widget.categories.name, style: GoogleFonts.openSans(fontSize: 13, color: MyColors.c0062FF, fontWeight: FontWeight.w600),),
           const SizedBox(height: 10,),
          Text(widget.categories.jobcount, style: GoogleFonts.openSans(fontSize: 13, color: MyColors.c4F4F4F6, fontWeight: FontWeight.w600),),
        
        ],
      ),
    );
  }

}