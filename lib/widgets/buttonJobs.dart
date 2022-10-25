import 'package:domestika/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ButtonJobs extends StatefulWidget {
  final String imageName;
  final String name;
  final String companyName;
  final String salary;
  final String sana;
  final String applicantscount; 
  final String location;
  final String full;

  const ButtonJobs({
    super.key,
    required this.imageName,
    required this.name,
    required this.companyName,
    required this.salary,
    required this.sana,
    required this.applicantscount,
    required this.location,
    required this.full,
    });

  @override
  State<ButtonJobs> createState() => _ButtonJobsState();
}

class _ButtonJobsState extends State<ButtonJobs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 26, left: 15, right: 15),
      padding: const EdgeInsets.only(top: 19, left: 20, right: 21),
      width: double.infinity,
      height: 135,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: MyColors.cE9FFF4F.withOpacity(0.2),
        border: Border.all(width: 2, color: MyColors.c000000.withOpacity(0.1))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 47,
                    height: 47,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(widget.imageName)),
                    ),
                  ),
                  const SizedBox(width: 12.5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(widget.name, style: GoogleFonts.openSans(fontSize: 14, color: MyColors.c000000, fontWeight: FontWeight.w700, letterSpacing: 0.7)),
                      const SizedBox(height: 5,),
                      Text(widget.companyName, style: GoogleFonts.openSans(fontSize: 15, color: MyColors.c000000, fontWeight: FontWeight.w400,))
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(widget.salary, style: GoogleFonts.openSans(fontSize: 11, color: MyColors.c000000, fontWeight: FontWeight.bold, letterSpacing: 0.7)),
                  const SizedBox(height: 5,),
                  Text(widget.sana, style: GoogleFonts.openSans(fontSize: 11, color: MyColors.c5873FF, fontWeight: FontWeight.w400,))
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 35, top: 10),
            child: Divider(thickness: 1.5, color: MyColors.c000000.withOpacity(0.15)),
          ),
          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.settings_applications_sharp, size: 20,),
                  Text(widget.applicantscount, style: GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.w600, color: MyColors.c000000.withOpacity(0.71)),),
                ],
              ),
               Row(
                children: [
                  const Icon(Icons.location_on_outlined, size: 20,),
                  Text(widget.location, style: GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.w600, color: MyColors.c000000.withOpacity(0.71)),),
                ],
              ),
               Row(
                children: [
                  const Icon(Icons.water_drop_rounded, size: 20,),
                  Text(widget.full, style: GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.w600, color: MyColors.c000000.withOpacity(0.71)),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}