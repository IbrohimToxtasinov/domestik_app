import 'package:domestika/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildButtonWidget extends StatelessWidget {
  final String imageName;
  const BuildButtonWidget({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      height: 59,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: MyColors.cFFFFFF,
      ),
      child: Center(child: SvgPicture.asset(imageName)),
    );
  }
}