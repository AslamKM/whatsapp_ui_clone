import 'package:flutter/material.dart';
import '../models/chat_model.dart';
//import 'package:whatsapp_clone/helpers/app_colors.dart';

import '../widgets/archived.dart';
import '../widgets/usertile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Archived();
          } else {
            return UserTile(
              userChat: chatsList[index - 1],
            );
          }
        },
        separatorBuilder: (context, index) {
          return const SizedBox();
        },
        itemCount: chatsList.length);
  }
}
