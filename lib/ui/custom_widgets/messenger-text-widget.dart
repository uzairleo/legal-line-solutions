import 'package:flutter/material.dart';
import 'package:legal_line_solution/core/constants/colors.dart';
import 'package:legal_line_solution/core/constants/text_style.dart';
import 'package:legal_line_solution/core/model/message.dart';
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
                  color: primaryColor.withOpacity(0.4),
                  borderRadius: chatBorderRadiusRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          message!.message ?? '',
                          style: chatTextStyleRight,
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
                  color: Color(0XFFF6F6F6),
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

class FileMessageRight extends StatelessWidget {
  final Message message;

  FileMessageRight(this.message);

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
              Text('${basename(message!.fileUrl!)}'),
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

class FileMessageLeft extends StatelessWidget {
  final Message message;

  FileMessageLeft(this.message);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.insert_drive_file, color: primaryColor, size: 100),
              Text('${basename(message.fileUrl!)}'),
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
