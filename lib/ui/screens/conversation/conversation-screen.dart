import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/ui/custom_widgets/conversation-tile.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/screens/chat/chat-scree.dart';

class ConversationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///
      ///[body] starts from here
      ///
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("$assets/bg_pink.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 13, right: 30, top: 66.0, bottom: 120),
            child: Column(
              children: [
                ///
                ///search bar
                ///
                search(),

                ///
                ///heading
                ///
                heading(),

                ///
                ///chat messages list
                ///
                messagesList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///
  ///search bar
  ///
  search() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 26.3),
                child: GestureDetector(
                  onTap: () {
                    // Get.to(() => SearchProductScreen());
                  },
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius:
                                8, // has the effect of softening the shadow
                            spreadRadius:
                                1.2, // has the effect of extending the shadow
                            offset: Offset(
                              0, // horizontal, move right 10
                              0.4, // vertical, move down 10
                            ),
                          )
                        ]),
                    child: TextFormField(
                      onSaved: (value) {},
                      enabled: true,
                      style: subBodyTextStyle.copyWith(fontSize: 16),
                      cursorColor: Colors.black,
                      controller: TextEditingController(),
                      validator: (value) {
                        if (value != null) {
                          return "please write something";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          suffixIconConstraints:
                              BoxConstraints(maxHeight: 40, maxWidth: 50),
                          suffixIcon: Padding(
                            padding:
                                const EdgeInsets.only(left: 14.6, right: 14.12),
                            child: ImageContainer(
                              assetImage: "$assets/search.png",
                              height: 15.91.h,
                              width: 14.9.w,
                            ),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            left: 22,
                            bottom: 15,
                          ),
                          hintText: "Search people",
                          hintStyle: subBodyTextStyle.copyWith(
                              color: Color(0XFFC5C5C5), fontSize: 17.sp)),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                // IconButton(
                //   onPressed: () {
                //     // Get.to(() => ChatScreen());
                //   },
                // icon: Container(
                //   height: 24.h,
                //   width: 24.w,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(5.0.r),
                //     color: primaryColor.withOpacity(0.4),
                //   ),
                //   child: Center(
                //     child: Icon(
                //       Icons.add,
                //       size: 14,
                //     ),
                //   ),
                //   ),
                // ),

                PopupMenuButton(
                    icon: Container(
                      height: 24.h,
                      width: 24.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0.r),
                        color: primaryColor.withOpacity(0.4),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 14,
                        ),
                      ),
                    ),
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text("Create Group Msg"),
                            value: 1,
                          ),
                        ])
              ],
            ),
          ],
        ),
      ],
    );
  }

  ///
  ///heading
  ///
  heading() {
    return Padding(
      padding: const EdgeInsets.only(top: 38.0, bottom: 41.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Client Chats",
            style:
                headingTextStyle.copyWith(fontSize: 20.sp, fontFamily: roboto),
          ),
        ],
      ),
    );
  }

  ///
  ///chat messages list
  ///
  messagesList() {
    return ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => ConversationTile(index));
  }
}
