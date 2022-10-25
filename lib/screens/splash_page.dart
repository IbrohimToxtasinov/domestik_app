import 'package:domestika/screens/iniciar_ceunte.dart';
import 'package:domestika/utils/colors.dart';
import 'package:domestika/utils/images.dart';
import 'package:domestika/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Portada extends StatefulWidget {
  const Portada({super.key});

  @override
  State<Portada> createState() => _PortadaState();
}

class _PortadaState extends State<Portada> {
  @override
  void initState(){
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const IniciarCeuntePage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.83,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(MyImages.imageBackground1),
              fit: BoxFit.cover,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 150,),
                Image.asset(
                  MyImages.imageDomestikaLogo,
                  width: 300,
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 27),
                  child: Text(
                    "Descubre  la comunidad creativa",
                    style: MyStyles.segoeUI400.copyWith(fontSize: 29, color: MyColors.cFFFFFF, letterSpacing: 0.7),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 84,
          ),
          Text(
            "domestika.com",
            style: GoogleFonts.acme(
                textStyle: const TextStyle(
                    color: MyColors.c000000,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.1)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
