import 'dart:math';

import 'package:domestika/models/categorys.dart';
import 'package:domestika/models/database.dart';
import 'package:domestika/utils/images.dart';
import 'package:domestika/utils/styles.dart';
import 'package:domestika/widgets/buildButtonCategories.dart';
import 'package:domestika/widgets/buildPost.dart';
import 'package:domestika/widgets/buttonJobs.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<PostModel>> getData() async {
    List<PostModel> url = PostModel.posts;

    var response = url;

    List<PostModel> json = response;
    return json;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.cF02D00,
        centerTitle: true,
        title: Image.asset(MyImages.imageDomestikaLogo, width: MediaQuery.of(context).size.width*0.35, height: MediaQuery.of(context).size.height*1,),
      actions: [
        IconButton(onPressed: () {
          
        },
        icon: const Icon(Icons.search, size: 30,)),
        IconButton(onPressed: () {
          
        },
        icon: const Icon(Icons.shopping_cart_outlined, size: 30,)),
      ],
      leading: IconButton(onPressed: () {

        },
        icon: const Icon(Icons.menu, size: 30,)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.024),
              FutureBuilder<List<PostModel>>(
                future: getData(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<PostModel>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      List<PostModel> posts = PostModel.posts;
                      List<Categories> categories = Categories.category;
                      return 
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 17, top: 50),
                            child: Text("Los cursos mejor valorados.", style: MyStyles.segoeUI400.copyWith(fontSize: 23, fontWeight: FontWeight.w600, color: MyColors.c000000, letterSpacing: 0.7),),
                          ),
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.55,
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: posts.length,
                              itemBuilder: (context, int index) {
                                return BuildPostwidget(postModel: posts[Random().nextInt(posts.length)]);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 17, top: 50),
                            child: Text("Cursos del paquete ADOBE", style: MyStyles.segoeUI400.copyWith(fontSize: 23, fontWeight: FontWeight.w600, color: MyColors.c000000, letterSpacing: 0.7),),
                          ),
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.55,
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: posts.length,
                              itemBuilder: (context, int index) {
                                return BuildPostwidget(postModel: posts[index]);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.5, right: 16.5, top: 68),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Jobs", style: GoogleFonts.openSans(fontSize: 19, fontWeight: FontWeight.w600, letterSpacing: 0.7, color: MyColors.c000000),),
                                Text("See all", style: GoogleFonts.openSans(fontSize: 13, fontWeight: FontWeight.w600, letterSpacing: 0.7, color: MyColors.c0062FF),),
                              ],
                            ),
                          ),
                          const ButtonJobs(imageName: MyImages.imageFlagma, name: "Product Designer", companyName: "Slack", salary: "\$105k - \$180k", sana: "Jun 16, 2021", applicantscount: "113 applicants", location: "New York", full: "Full-time"),
                          const SizedBox(height: 16,),
                          const ButtonJobs(imageName: MyImages.imageFlagma, name: "Fronted Dev", companyName: "Netflix", salary: "\$105k - \$180k", sana: "Jun 16, 2021", applicantscount: "23 applicants", location: "New York", full: "Full-time"),
                          DefaultTabController(
                            length: 3,
                            child: Column(
                              children: [
                                TabBar(
                                  tabs: [
                                    Tab(
                                      child: Text("Software Engineer", style: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.w600, color: MyColors.c5873FF)),
                                    ),
                                    Tab(
                                      child: Text("UX Designer", style: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.w600, color: MyColors.cC024F6)),
                                    ),
                                    Tab(
                                      child: Text("Content Manager", style: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.w600, color: MyColors.c004E676)),
                                    ),
                                  ]
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.5, right: 16.5, top: 68),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Categories", style: GoogleFonts.openSans(fontSize: 19, fontWeight: FontWeight.w600, letterSpacing: 0.7, color: MyColors.c000000),),
                                Text("See all", style: GoogleFonts.openSans(fontSize: 13, fontWeight: FontWeight.w600, letterSpacing: 0.7, color: MyColors.c0062FF),),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, int index) {
                                return CategoriesButton(categories: categories[index]);
                              },
                            ),
                          ),
                        ],
                      );
                    }
                  }
                  return const Center(
                    child: Text(
                      "Nimdir xatolik bor",
                      style: TextStyle(fontSize: 24),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}