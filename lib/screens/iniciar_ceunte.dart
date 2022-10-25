import 'package:domestika/screens/Inicio2.dart';
import 'package:domestika/screens/crear_ceunte.dart';
import 'package:domestika/screens/splash_page.dart';
import 'package:domestika/utils/colors.dart';
import 'package:domestika/utils/images.dart';
import 'package:domestika/utils/styles.dart';
import 'package:domestika/widgets/buildButton.dart';
import 'package:domestika/widgets/buildTextfoemField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IniciarCeuntePage extends StatefulWidget {
  const IniciarCeuntePage({super.key});

  @override
  State<IniciarCeuntePage> createState() => _IniciarCeuntePageState();
}
final _formkey = GlobalKey<FormState>();
class _IniciarCeuntePageState extends State<IniciarCeuntePage> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.85,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(MyImages.imageBackground2),
                    fit: BoxFit.fill,
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30,),
                      Image.asset(
                        MyImages.imageDomestikaLogo,
                        width: 301,
                        height: 60,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text("Bienvenido/a\nde nuevo", style: MyStyles.segoeUI400.copyWith(fontSize: 38, fontWeight: FontWeight.w600, color: MyColors.cFFFFFF, height: 1, letterSpacing: 0.7),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextFormFild(name: "Correo electrónico", errorname: "Entyer your electrónico",hintName: "correo@email.com"),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextFormFild(name: "Contraseña", errorname: "Entyer your Contraseña", hintName: "**************",),
                      const SizedBox(
                        height: 19,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(MyImages.iconLine),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("O regístrate con",
                              style: MyStyles.segoeUI400.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  letterSpacing: 0.1,
                                  color: MyColors.cFFFFFF)),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(MyImages.iconLine),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          BuildButtonWidget(imageName: MyImages.iconGoogle),
                          SizedBox(width: 25,),
                          BuildButtonWidget(imageName: MyImages.iconFacebook),
                          SizedBox(width: 25,),
                          BuildButtonWidget(imageName: MyImages.iconTwitter),
                        ],
                      ),
                      const SizedBox(height: 31,),

                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Text("¿Todavía no tienes cuenta en Domestika?", style: MyStyles.segoeUI400.copyWith(color: MyColors.cFFFFFF,letterSpacing: 0.1)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 270),
                        child: TextButton(onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const CrearCeuntePage()));
                        }, child: Text("Crear Ceunte", style: MyStyles.segoeUI400.copyWith(color: MyColors.c000000,letterSpacing: 0.1))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Atrás",
                        style: MyStyles.segoeUI400.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: MyColors.cFE320FF),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      InkWell(
                        onTap: () {
                          if(_formkey.currentState!.validate()){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: MyColors.cFE320FF,
                          ),
                          child: Center(
                            child: Text(
                              "Iniciar Sesión",
                              style: MyStyles.segoeUI400.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: MyColors.cFFFFFF,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
