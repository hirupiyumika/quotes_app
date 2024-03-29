import 'package:flutter/material.dart';
import 'package:quotes_app/screens/add_author.dart';
import 'package:quotes_app/screens/all_authors.dart';
import 'package:quotes_app/screens/my_profile.dart';
import 'package:quotes_app/utils/app_colors.dart';
import 'package:quotes_app/widgets/button_widgets.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: "Quote App",
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "\nStay your beautiful day",
                    style: TextStyle(
                      color: AppColors.smallTextColor,
                      fontSize: 14,
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          InkWell(
            onTap: () {
              Get.to(() => AddAuthor(),
                  transition: Transition.zoom,
                  duration: Duration(microseconds: 500));
            },
            child: ButtonWedget(
              backgroundcolor: AppColors.mainColor,
              text: "Add Quote",
              textColor: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Get.to(() => AllAuthors(),
                  transition: Transition.fade, duration: Duration(seconds: 1));
            },
            child: ButtonWedget(
              backgroundcolor: AppColors.smallTextColor,
              text: "View Authors",
              textColor: Colors.white,
            ),
          ),
           const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Get.to(() => MyProfile(),
                  transition: Transition.fade, duration: Duration(seconds: 1));
            },
            child: ButtonWedget(
              backgroundcolor: AppColors.smallTextColor,
              text: "My Profile",
              textColor: Colors.white,
            ),
          )
        ],
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/1.jpg"),
        ),
      ),
    ));
  }
}
