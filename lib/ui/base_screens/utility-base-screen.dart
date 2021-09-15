import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';

class UtilityBaseScreen extends StatelessWidget {
  final body;
  final bgAsset;
  final appTitle;
  UtilityBaseScreen(
      {this.body, this.bgAsset = "$assets/bg_light.png", this.appTitle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_sharp, size: 22),
            onPressed: () {},
          ),
          title: appTitle,
          actions: [
            IconButton(
              onPressed: () {},
              icon: ImageContainer(
                height: 24.82.h,
                width: 3.6.w,
                assetImage: "$assets/more_vertical.png",
              ), //Icon(Icons.more_vert_outlined)
            )
          ]),

      ///
      ///[body] starts from here
      ///
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(bgAsset), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ///
              ///child
              ///
              body ?? Container()
            ],
          ),
        ),
      ),
    );
  }
}
