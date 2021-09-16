import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/strings.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/core/enums/message_type.dart';
import 'package:legal_line_solution/ui/base_screens/utility-base-screen.dart';
import 'package:legal_line_solution/ui/custom_widgets/image-container.dart';
import 'package:legal_line_solution/ui/custom_widgets/messenger-text-widget.dart';
import 'package:legal_line_solution/ui/custom_widgets/staff-directory-tile.dart';
import 'package:legal_line_solution/ui/screens/chat/chat-view-model.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatViewModel(),
      child: Consumer<ChatViewModel>(
        builder: (context, model, child) => UtilityBaseScreen(
          //bg of body
          bgAsset: "$assets/bg_pink2.png",

          ///
          ///appbar title
          ///
          appTitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cristina Röhmer",
                style: bodyTextStyle.copyWith(
                    fontSize: 16.sp, fontFamily: roboto, color: Colors.white),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'Last seen today at 8:09 AM',
                style: bodyTextStyle.copyWith(
                    fontSize: 12.sp, fontFamily: roboto, color: Colors.white38),
              ),
            ],
          ),
          avoidSCSV: true,

          ///
          ///body starts from here
          ///
          body: Padding(
            padding: const EdgeInsets.only(left: 0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///
                ///all messages betweene users
                ///
                messagesList(model),

                ///
                ///send message tabbar custom design
                ///
                sendSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///
  ///all messages betweene users
  ///
  messagesList(ChatViewModel model) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
        reverse: false,
        itemCount: model.reversedMessagesList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          //Todo: Change docId to real Firebase Id
          bool isMe = index % 2 == 0 ? true : false;

          print('isMe: $isMe');
          if (model.reversedMessagesList[index].type == MessageType.file) {
            return isMe
                ? FileMessageRight(model.reversedMessagesList[index])
                : FileMessageLeft(model.reversedMessagesList[index]);
          } else if (model.reversedMessagesList[index].type ==
              MessageType.image) {
            return isMe
                ? ImageMessageRight(model.reversedMessagesList[index])
                : ImageMessageLeft(model.reversedMessagesList[index]);
          } else {
            return isMe
                ? MessengerTextRight(message: model.reversedMessagesList[index])
                : MessengerTextLeft(message: model.reversedMessagesList[index]);
          }
        },
      ),
    );
    // Expanded(
    //     child: Container(
    //   child: ListView.builder(
    //       physics: BouncingScrollPhysics(),
    //       itemCount: 120,
    //       itemBuilder: (context, index) => Text("$index")),
    // ));
  }

  ///
  ///send message tabbar custom design
  ///
  sendSection() {
    return Padding(
      padding: EdgeInsets.only(bottom: 51.h, left: 14, right: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 46.h,
            width: 46.w,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 8, // has the effect of softening the shadow
                    spreadRadius: 1.2, // has the effect of extending the shadow
                    offset: Offset(
                      0, // horizontal, move right 10
                      0.4, // vertical, move down 10
                    ),
                  )
                ]),
            child: Center(
              child: ImageContainer(
                assetImage: "$assets/mic.png",
                height: 26.47.h,
                width: 18.2.w,
                fit: BoxFit.contain,
              ),
            ),
          ),
          //textfield
          Container(
            height: 60.h,
            width: 265.w,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 8, // has the effect of softening the shadow
                    spreadRadius: 1.2, // has the effect of extending the shadow
                    offset: Offset(
                      0, // horizontal, move right 10
                      0.4, // vertical, move down 10
                    ),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0.r)),
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              // controller: model.controller,
              // onChanged: (val) {
              //   model.msgToBeSent.message = val;
              // },

              autofocus: false,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 24.w),
                hintText: 'Enter your message here',
                hintStyle: headingTextStyle.copyWith(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 14.sp,
                    color: Color(0XFF9E9E9E)),
                border: InputBorder.none,
              ),
            ),
          ),
          //send button
          GestureDetector(
            onTap: () {},
            child: ImageContainer(
              height: 46.h,
              width: 46.w,
              fit: BoxFit.contain,
              assetImage: "$assets/send.png",
            ),
          )
        ],
      ),
    );
  }
}
