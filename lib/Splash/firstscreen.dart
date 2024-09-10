import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';


import '../HomeScreen.dart';
import '../utils/colors.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexToColor('#EBF1F4'),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 100),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Explore\n the world\n with us',
                      style: TextStyle(
                        fontSize: 100,
                        height: 1.0,
                        fontFamily: 'GreatVibes',
                        color: hexToColor('#0D3847'),
                        shadows: [
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 5.0,
                            color: Color.fromARGB(128, 121, 121, 121),
                          ),
                          Shadow(
                              offset: Offset(6.0, 6.0),
                              blurRadius: 10.0,
                              color: Colors.white),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Material(
                        elevation: 20.0,
                        // Adjust the elevation as needed
                        shape: CircleBorder(),
                        color: Colors.transparent,
                        // Make the Material color transparent to let the Container color show
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: hexToColor('#0D3847'),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              FluentIcons.chevron_right_48_regular,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Material(
              elevation: 40, // Adjust the elevation as needed
              shape: CircleBorder(),
              color: Colors.transparent,
              child: Container(
                height: 350,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage("assets/images/jag.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 350,
                        width: 250,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage("assets/images/konark.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 350,
                        width: 250,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
