import 'package:flutter/material.dart';

import '../helpers/app_colors.dart';
import '../widgets/custom_tab.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 49,
      pinned: true,
      expandedHeight: 105,
      backgroundColor: AppColors.primarySwatch,
      title: const Text(
        'WhatsApp',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          splashRadius: 20,
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          splashRadius: 20,
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: TabBar(
          indicatorWeight: 3,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.photo_camera)),
            CustomTab(name: 'chats'),
            CustomTab(name: 'status'),
            CustomTab(name: 'calls'),
          ],
        ),
      ),
    );
  }
}
