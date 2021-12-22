  import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

import '../helpers/app_colors.dart';

AppBar individualChatAppBar(BuildContext context,Chat data) {
    return AppBar(
      titleSpacing: 1,
      leadingWidth: 87,
      leading: Container(
        padding: const EdgeInsets.all(5),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => Navigator.of(context).pop(),
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Row(
              children:  [
             const   Icon(Icons.arrow_back),
               const SizedBox(width: 5),
                CircleAvatar(
                  radius: 20,
               //   backgroundColor: Colors.white,
               backgroundImage: NetworkImage(data.dp),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.primarySwatch,
      title: InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Online',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          splashRadius: 20,
          icon: const Icon(Icons.videocam),
        ),
        IconButton(
          onPressed: () {},
          splashRadius: 20,
          icon: const Icon(Icons.call),
        ),
        IconButton(
          splashRadius: 20,
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }