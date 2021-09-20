import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:legal_line_solution/core/enums/message_type.dart';
import 'package:legal_line_solution/core/enums/view_state.dart';
import 'package:legal_line_solution/core/model/message.dart';
import 'package:legal_line_solution/core/others/base_view_model.dart';

class GeneralMailBoxDetailViewModel extends BaseViewModel {
  GeneralMailBoxDetailViewModel() {
    init();
  }

  // final _dbService = locator<DatabaseService>();
  List<Message> messages = []; //To be removed
  Message msgToBeSent = Message();
  List<Message> messagesList = [];
  List<Message> reversedMessagesList = [];
  final controller = TextEditingController();

  init() {
    injectDummyMessageList();
    reversedMessagesList = messagesList.reversed.toList();
    msgToBeSent = Message();
    notifyListeners();
  }

  sendMessage() async {
    setState(ViewState.loading);
    if (msgToBeSent.type == MessageType.file ||
        msgToBeSent.type == MessageType.image) {
      // FileUploadResponse response = await _dbService.uploadFile(selectedFile);
      // if (response.success) msgToBeSent.fileUrl = response.fileUrl;
    }
    var timeStamp;
    DateTime time = DateFormat('yyyy-mm-dd HH:mm:s')
        .parse(DateTime.now().toString())
        .toLocal();
    if (time != null) {
      timeStamp = DateFormat('HH : mm').format(time);
    }
    msgToBeSent.timeStamp = timeStamp;
    // conversation.lastMessage = msgToBeSent;
    // _dbService.sendMessage(conversation: conversation, message: msgToBeSent);
    // _dbService.updateConversation(conversation);
    reversedMessagesList.add(msgToBeSent);
    controller.clear();
    msgToBeSent = msgToBeSent = Message(senderId: "DummyId");
    setState(ViewState.idle);
  }

  injectDummyMessageList() {
    messagesList.add(Message(
        type: MessageType.audio,
        senderId: "SenderIdDummy1",
        message: "Nothing Planned and you?",
        timeStamp: "17:19 "));

    messagesList.add(Message(
        type: MessageType.text,
        senderId: "SenderIdDummy0",
        message: "Hello John, what are you going to do this weekend?",
        timeStamp: "17:18 "));
  }
}
