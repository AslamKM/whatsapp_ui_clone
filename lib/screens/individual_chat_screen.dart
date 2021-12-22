import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

import '../widgets/individual_chat_appbar.dart';

class IndividualChatScreen extends StatelessWidget {
  const IndividualChatScreen({Key? key, required this.data}) : super(key: key);

  final Chat data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: individualChatAppBar(context,data),
      body: Container(),
    );
  }


}
