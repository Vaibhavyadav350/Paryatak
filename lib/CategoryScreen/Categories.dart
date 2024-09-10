import 'dart:async';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        end: Alignment.topRight,
                        begin: Alignment.bottomLeft,
                        colors: [ kPrimaryColor, Colors.white]),
                    ),
                child: Stack(
                  children: <Widget>[

                    Positioned(
                      right: -50,

                      bottom: -30,
                      child: Image.asset(
                          fit: BoxFit.fitWidth,
                          width: 350,
                          "assets/images/Trip-cuate.png"),
                    ),
                    const Positioned(
                      left: 5,
                      top: 130,
                      child: Text(
                        "EXPLORE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'GreatVibes',
                            fontSize:40),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(

                color: Colors.green[50],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100)),
              ),
              height: 60,
              width: double.infinity,
              child: ListTile(
                leading: Icon(FluentIcons.search_12_regular),
                title: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none
                  ),
                ),
                trailing: Icon(FluentIcons.filter_12_regular),
              ),


            ),
            Container(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Chip(
                        label:Row(
                          children: [
                            Icon(FluentIcons.mountain_trail_28_regular),
                            Text('   Mountaineering', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Chip(
                        label:Row(
                          children: [
                            Icon(FluentIcons.mountain_location_top_28_regular),
                            Text('   Canyoning', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Chip(
                        label:Row(
                          children: [
                            Icon(FluentIcons.beach_48_regular),
                            Text('   Coastal', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Center(child: Text("Banner",style: TextStyle(color: Colors.white,fontSize: 100),)),
              height: 150,
              width:double.infinity
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
