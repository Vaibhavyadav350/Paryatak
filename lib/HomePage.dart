import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'home/headerwithsearch.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(FluentIcons.data_bar_horizontal_20_filled,color: Colors.white,),backgroundColor: kPrimaryColor,),
      backgroundColor: Color(0xFFEBF1F4),
      body: Column(
        children: [
          HeaderWithSearchBox(),
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
                          Icon(FluentIcons.mountain_trail_28_regular,color: kPrimaryColor,),
                          Text('   Mountaineering',style: TextStyle(color: kPrimaryColor),),
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
                          Icon(FluentIcons.mountain_location_top_28_regular,color: kPrimaryColor),
                          Text('   Canyoning',style: TextStyle(color: kPrimaryColor),),
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
                          Icon(FluentIcons.beach_48_regular,color: kPrimaryColor),
                          Text('   Coastal',style: TextStyle(color: kPrimaryColor),),
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
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/exp.jpeg")),),


        ],
      ),
    );
  }
}

