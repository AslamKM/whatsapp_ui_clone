import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/camera_screen.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';
//import 'package:whatsapp_clone/helpers/app_colors.dart';

import '../widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        //appBar: AppBar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) {
            return [
              const CustomAppBar(),
            ];
          },
          body: const TabBarView(
            children: [
              CameraScreen(),
              ChatScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
