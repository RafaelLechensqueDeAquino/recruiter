import 'package:flutter/material.dart';

import '../../shared/themes/app_colors.dart';
import '../../shared/themes/app_text_styles.dart';
import 'homeWidgets/down_home_widgets.dart';
import 'homeWidgets/top_home_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return    LayoutBuilder(
      builder: (context, container) {
        return Scaffold(resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: AppColors.primary,
            elevation: 0,
            automaticallyImplyLeading: true,
            title: Text(
              'Seja bem vindo, Vanderson Barbosa ',
              style: TextStyles.titleWellCome,
            ),
          ),
          // backgroundColor: AppColors.,
          endDrawer: Drawer(
            child: Column(children: const [
              ListTile(
                title: Text('Home'),
              )
            ]),
          ),
          body: Column(
            children: const [
              TopHomeWidget(),
              DownHomeWidgets(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_today_rounded), label: "Hoje"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.back_hand), label: "Interrupções"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.whatsapp), label: "Whatsapp"),
              ]),
        );
      },
    );
  }
}
