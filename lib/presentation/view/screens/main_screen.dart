import 'package:flutter/material.dart';
import 'package:nasa_project/core/utils/app_colors.dart';
import 'package:nasa_project/core/utils/media_query_values.dart';
import 'package:nasa_project/core/utils/style_manager.dart';
import 'package:nasa_project/presentation/view/screens/earth.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          title: Text(
            "NASA",
            style: getBoldStyle(color: AppColors.white, fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/galaxy.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: context.height * 0.15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EarthScreen(),
                        ));
                  },
                  child: Stack(
                    alignment: const Alignment(0, -12),
                    children: [
                      Card(
                        color: AppColors.white,
                        child: SizedBox(
                          width: context.width * 0.40,
                          height: context.height * 0.2,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Earth",
                                  style: getMediumStyle(
                                      color: AppColors.black, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/earth.png",
                        height: context.height * 0.2,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: context.height * 0.1,
                ),
                InkWell(
                  onTap: () {},
                  child: Stack(
                    alignment: const Alignment(0, -5),
                    children: [
                      Card(
                        color: AppColors.white,
                        child: SizedBox(
                          width: context.width * 0.40,
                          height: context.height * 0.2,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Saturn",
                                  style: getMediumStyle(
                                      color: AppColors.black, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: Image.asset(
                          "assets/images/saturn.png",
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
