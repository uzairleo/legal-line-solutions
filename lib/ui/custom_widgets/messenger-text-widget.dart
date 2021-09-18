import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/screen-util.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/core/model/message.dart';
import 'package:legal_line_solution/ui/custom_widgets/progress-widget.dart';
import 'package:path/path.dart';

class MessengerTextRight extends StatelessWidget {
  final Message? message;

  MessengerTextRight({this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Flexible(
                flex: 3,
                child: Material(
                  elevation: 2,
                  color: Color(0XFFAFBBC6), //primaryColor.withOpacity(0.4),
                  borderRadius: chatBorderRadiusRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          message!.message ?? '',
                          style: chatTextStyleRight.copyWith(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontFamily: GoogleFonts.poppins().fontFamily),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   mainAxisSize: MainAxisSize.min,
                        //   children: [
                        //     Text(
                        //       message.timeStamp ?? "null",
                        //       style: subBodyTextStyle.copyWith(
                        //           fontSize: 11, color: Colors.white),
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 7, top: 5),
            child: Text(
//              '9:00 PM',
              message!.timeStamp ?? ' ',
              style: chatTimeTS,
            ),
          ),
        ],
      ),
    );
  }
}

class MessengerTextLeft extends StatelessWidget {
  final Message? message;

  MessengerTextLeft({this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Flexible(
                flex: 3,
                child: Material(
                  elevation: 2,
                  color: Colors.white, //Color(0XFFF6F6F6),
                  borderRadius: chatBorderRadiusLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Text(
                      message!.message ?? '',
                      style: chatTextStyleLeft,
                    ),
                  ),
                ),
              ),
              Flexible(flex: 1, child: Container()),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60, left: 8),
            child: Text(
//              '8:00 PM',
              message!.timeStamp ?? '',
              style: chatTimeTS,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageMessageRight extends StatelessWidget {
  final Message message;

  ImageMessageRight(this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  height: 250,
                  width: 180,
                  image: NetworkImage(message.fileUrl ?? ''),
                  placeholder: AssetImage('assets/static_assets/Image 1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 8, top: 5),
                child: Text(
//              '8:00 PM',
                  message.timeStamp ?? '',
                  style: chatTimeTS,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ImageMessageLeft extends StatelessWidget {
  final Message message;

  ImageMessageLeft(this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  height: 250,
                  width: 180,
                  image: NetworkImage(message.fileUrl ?? ''),
                  placeholder: AssetImage('assets/static_assets/Image 1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 8, top: 5),
                child: Text(
//              '8:00 PM',
                  message.timeStamp ?? '',
                  style: chatTimeTS,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AudioMessageRight extends StatelessWidget {
  final Message message;

  AudioMessageRight(this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.insert_drive_file, color: primaryColor, size: 100),
              Text(''),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 8, top: 5),
                child: Text(
//              '8:00 PM',
                  message.timeStamp ?? '',
                  style: chatTimeTS,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AudioMessageLeft extends StatefulWidget {
  final Message message;

  AudioMessageLeft(this.message);

  @override
  _AudioMessageLeftState createState() => _AudioMessageLeftState();
}

class _AudioMessageLeftState extends State<AudioMessageLeft>
    with TickerProviderStateMixin {
  bool isplay = true;

  Animation<double>? _myAnimation;
  AnimationController? _controller;
  var _value = 0.1;
  Timer? timer;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _myAnimation = CurvedAnimation(curve: Curves.linear, parent: _controller!);
    // timer = Timer.periodic(Duration(seconds: 1), (timer) {
    //   _value = _value + 0.1;
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    timer = Timer.periodic(Duration(), (timer) {});
    super.dispose();
    timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 140,
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Material(
              elevation: 2,
              color: Colors.white, //primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(6.0.r),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          if (isplay) {
                            _controller!.forward();
                            print("ITS LEO");
                            timer = Timer.periodic(
                                Duration(
                                  milliseconds: 1000,
                                ), (timer) {
                              _value = _value + 0.04;
                              print("Incremented====>$_value");
                              if (_value >= 0.9) {
                                print("its finally 0.5==>$_value");
                                timer.cancel();
                                _controller!.reverse();
                                isplay = false;
                                _value = 0.1;
                              }
                              setState(() {});
                            });
                            isplay = false;
                          } else {
                            _controller!.reverse();
                            timer!.cancel();
                            isplay = true;
                            setState(() {});
                          }

                          // isplay = !isplay;
                        },
                        icon: AnimatedIcon(
                            icon: AnimatedIcons.play_pause,
                            progress: _myAnimation!,
                            size: 34,
                            color: primaryColor)),

                    ///
                    ///progresss widget for progress of voice
                    ///

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ProgressWidget(
                        value: _value,
                        labelStarts: "1.05",
                        labelEnds: "3.50",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
