import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart";

import 'CategoryScreen/Categories.dart';
import 'GuideScreen/GuidePage.dart';
import 'HomePage.dart';
import 'RentalScreen/Rental.dart';
import 'Settings.dart';
import 'constants.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<PersistentTabConfig> _tabs() => [
    PersistentTabConfig(
      screen: Categories(),
      item: ItemConfig(
          activeForegroundColor: kPrimaryColor,
          icon: const Icon(FluentIcons.app_folder_48_regular, size: 23),
          title: "Categories",textStyle: TextStyle(fontSize: 17)),
    ),
    PersistentTabConfig(
      // screen: const UploadProjectPage(),
      screen: GuidePage(),
      item: ItemConfig(
          activeForegroundColor: kPrimaryColor,
          icon: const Icon(FluentIcons.style_guide_24_regular, size: 23),
          title: "Guide",textStyle: TextStyle(fontSize: 17)),
    ),
    PersistentTabConfig(
      // screen: const SocialFeed(),
      screen: const HomePage(),
      item: ItemConfig(
          activeForegroundColor: kPrimaryColor,
          icon: const Icon(FluentIcons.home_48_regular, size: 23),
          title: "Home",textStyle: TextStyle(fontSize: 17)),
    ),
    PersistentTabConfig(
      screen: const Rental(),
      item: ItemConfig(
          activeForegroundColor:kPrimaryColor,
          icon:
          const Icon(FluentIcons.vehicle_bicycle_24_regular, size: 25),
          title: "Rental",textStyle: TextStyle(fontSize: 17)),
    ),
    PersistentTabConfig(
      screen: ProfileScreen(),
      item: ItemConfig(
          activeForegroundColor: kPrimaryColor,
          icon: const Icon(FluentIcons.person_48_regular, size: 23),
          title: "Profile",textStyle: TextStyle(fontSize: 17)),
    ),
  ];
  PersistentTabController _controller =  PersistentTabController(initialIndex: 2);

  @override
  Widget build(BuildContext context) => PersistentTabView(
    controller: _controller,
    tabs: _tabs(),
    navBarBuilder: (navBarConfig) => Style2BottomNavBar(
      itemAnimationProperties: ItemAnimation(
        duration: Duration(milliseconds: 900),
        curve: Curves.easeOutExpo,
      ),
      navBarConfig: navBarConfig,
    ),
  );
}
