import 'package:flutter/material.dart';
import 'package:nasa_project/core/utils/app_colors.dart';
import 'package:nasa_project/core/utils/media_query_values.dart';
import 'package:nasa_project/core/utils/style_manager.dart';
import 'package:nasa_project/presentation/view/widgets/earth_model.dart';

class EarthScreen extends StatefulWidget {
  const EarthScreen({super.key});

  @override
  State<EarthScreen> createState() => _EarthScreenState();
}

class _EarthScreenState extends State<EarthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        title: const Text("Earth"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PlanetView(),
            SizedBox(
              height: context.height * 0.02,
            ),
            Container(
              color: AppColors.darkGrey,
              width: double.infinity,
              height: context.height * 0.15,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/earth.png",
                        height: context.height * 0.1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lengths Of Day",
                            style: getBoldStyle(color: AppColors.white),
                          ),
                          Text(
                            "23.9 hours",
                            style: getRegularStyle(color: AppColors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        width: context.width * 0.1,
                      ),
                      Image.asset(
                        "assets/images/earth.png",
                        height: context.height * 0.1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lengths Of Year",
                            style: getBoldStyle(color: AppColors.white),
                          ),
                          Text(
                            "365.25 days",
                            style: getRegularStyle(color: AppColors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: context.width * 0.1,
                      ),
                      SizedBox(
                        width: context.width * 0.1,
                      ),
                      Image.asset(
                        "assets/images/earth.png",
                        height: context.height * 0.1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Distance From Sun",
                            style: getBoldStyle(color: AppColors.white),
                          ),
                          SizedBox(
                            width: context.width * 0.4,
                            child: Text(
                              "93,327,712 miles / 150,196,428 Kilometers",
                              style: getRegularStyle(color: AppColors.grey),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: context.width * 0.1,
                      ),
                      SizedBox(
                        width: context.width * 0.1,
                      ),
                      Image.asset(
                        "assets/images/earth.png",
                        height: context.height * 0.1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: context.width * 0.4,
                            child: Text(
                              "One Way Light Time to Sun",
                              style: getBoldStyle(color: AppColors.white),
                            ),
                          ),
                          Text(
                            "8.350022 minutes",
                            style: getRegularStyle(color: AppColors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: context.width * 0.1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: context.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Namesake",
                    style: getBoldStyle(color: AppColors.black, fontSize: 30),
                  ),
                  Text(
                    "The name Earth is at least 1,000 years old. All of the planets, except for Earth, were named after Greek and Roman gods and goddesses. However, the name Earth is a Germanic word, which simply means “the ground.”",
                    style: getLightStyle(color: AppColors.black, fontSize: 20),
                  ),
                  SizedBox(
                    height: context.height * 0.07,
                  ),
                  Text(
                    "Potential for Life",
                    style: getBoldStyle(color: AppColors.black, fontSize: 30),
                  ),
                  Text(
                    "Earth has a very hospitable temperature and mix of chemicals that have made life abundant here. Most notably, Earth is unique in that most of our planet is covered in liquid water, since the temperature allows liquid water to exist for extended periods of time. Earth's vast oceans provided a convenient place for life to begin about 3.8 billion years ago.Some of the features of our planet that make it great for sustaining life are changing due to the ongoing effects of climate change.",
                    style: getLightStyle(color: AppColors.black, fontSize: 20),
                  ),
                  SizedBox(
                    height: context.height * 0.07,
                  ),
                  Text(
                    "Potential for Life",
                    style: getBoldStyle(color: AppColors.black, fontSize: 30),
                  ),
                  Text(
                    "Earth has a very hospitable temperature and mix of chemicals that have made life abundant here. Most notably, Earth is unique in that most of our planet is covered in liquid water, since the temperature allows liquid water to exist for extended periods of time. Earth's vast oceans provided a convenient place for life to begin about 3.8 billion years ago.Some of the features of our planet that make it great for sustaining life are changing due to the ongoing effects of climate change.",
                    style: getLightStyle(color: AppColors.black, fontSize: 20),
                  ),
                  SizedBox(
                    height: context.height * 0.07,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
