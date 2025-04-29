import 'package:chat_app/config/AssetsImages.dart';
import 'package:chat_app/pages/HomePage/widget_chat_page/chatView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/gestures.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        toolbarHeight: 70,
        actions: [
          IconButton(icon: Icon(Icons.search, size: 30), onPressed: () {}),

          IconButton(icon: Icon(Icons.more_vert, size: 30), onPressed: () {}),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10),
          child: SvgPicture.asset(
            Assetsimages.appIcon,
            height: 15,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('TalkUp', style: Theme.of(context).textTheme.headlineLarge),
          ],
        ),
        bottom: TabBar(
          controller: _tabController,

          unselectedLabelStyle: Theme.of(context).textTheme.labelMedium,
          labelStyle: Theme.of(context).textTheme.bodyLarge,
          tabs: [Tab(text: 'Chats'), Tab(text: 'Groups'), Tab(text: 'Calls')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30,
          color: Theme.of(context).dialogBackgroundColor,
        ),
      ),
      body: TabBarView(
        dragStartBehavior: DragStartBehavior.down,
        children: [
          ChatPageBody(),
          ListView(children: [ListTile(title: Text('Aqeel'))]),
          ListView(children: [ListTile(title: Text('Ahmed'))]),
        ],

        controller: _tabController,
      ),
    );
  }
}
