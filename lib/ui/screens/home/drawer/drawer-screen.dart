import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';

class DrawerMenuTile {
  String? label;
  String? icon;
  bool isSelected = false;
  double? height;
  double? width;
  DrawerMenuTile(
      {this.label,
      this.icon,
      this.isSelected = false,
      this.height,
      this.width});
}

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  List<DrawerMenuTile> tiles = [];
  @override
  void initState() {
    super.initState();
    injectTiles();
  }

  injectTiles() {
    tiles.add(DrawerMenuTile(
      label: 'General Mailbox',
      icon: "$assets/mail.png",
      height: 15.45,
      width: 22.31,
    ));
    tiles.add(DrawerMenuTile(
      label: 'Manage Clients',
      icon: "$assets/manage_client.png",
      height: 30,
      width: 21,
    ));
    tiles.add(DrawerMenuTile(
      label: 'Manage Users',
      icon: "$assets/manage_user.png",
      height: 20.83,
      width: 24.3,
    ));
    tiles.add(DrawerMenuTile(
        label: 'Settings',
        icon: "$assets/settings.png",
        height: 21.08,
        width: 21.08));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh,
      width: 1.sw / 1.5,
      color: primaryColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 76.h,
              left: 13,
            ),
            child: Row(
              children: [
                Container(
                  height: 52.h,
                  width: 52.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("$assets/user1.png"),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  width: 14.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Juris Civilis",
                      style: headingTextStyle.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text("Lawyer",
                        style: headingTextStyle.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 67.h,
          ),

          ///
          ///list of settings tile
          ///
          Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Column(
              children: List.generate(
                  tiles.length,
                  (index) => InkWell(
                        onTap: () {
                          for (var i = 0; i < tiles.length; i++) {
                            if (i == index) {
                              tiles[i].isSelected = true;
                            } else {
                              tiles[i].isSelected = false;
                            }
                            setState(() {});
                          }
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 38.0, bottom: 10),
                          child: Container(
                            height: 54.h,
                            // width: 240.w,
                            decoration: BoxDecoration(
                                color: tiles[index].isSelected
                                    ? Color(0XFF24084B)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(11.r)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 13, bottom: 13, left: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ImageContainer(
                                    height: tiles[index].height!.h,
                                    width: tiles[index].width!.w,
                                    fit: BoxFit.contain,
                                    assetImage: tiles[index].icon,
                                  ),
                                  SizedBox(
                                    width: 15.2.w,
                                  ),
                                  Text(
                                    "${tiles[index].label}",
                                    style: headingTextStyle.copyWith(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: roboto,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
            ),
          ),
          Row(
            children: [
              Container(
                height: 1.6.h,
                width: 1.sw / 1.5,
                color: Color(0XFF24084B),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(top: 13, bottom: 13, left: 8.0),
            child: Row(
              children: [
                ImageContainer(
                  height: 19.h,
                  width: 21.71.w,
                  assetImage: "$assets/logout.png",
                ),
                SizedBox(
                  width: 15.2.w,
                ),
                Text(
                  "Logout",
                  style: headingTextStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: roboto,
                      color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 220.h,
          ),
          ImageContainer(
            assetImage: "$assets/logo0.png",
            height: 21.h,
            width: 204.46.w,
          )
        ],
      ),
    );
  }
}
