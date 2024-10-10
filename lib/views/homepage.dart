import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_life/model/ip_model.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  String name = 'Hello Ziad Essam 👋';
  List subText = ['Welcome back home', 'Stay safe'];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => IpModel(),
        child: MaterialApp(
          // labeltext for user input
          home: Scaffold(
              body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF1D1F33), // Dark Blue
                  Color(0xFF0D0F1A), // Very Dark Blue
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Stack(children: [
              Positioned(
                top: -100,
                left: -100,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Colors.white.withOpacity(0.2), // Soft white light
                        Colors.transparent, // Fades out
                      ],
                      stops: [0.3, 1.0],
                    ),
                  ),
                ),
              ),
              // Light effect at the bottom
              Positioned(
                bottom: -100,
                right: -100,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Colors.blue.withOpacity(0.3), // Soft blue light
                        Colors.transparent, // Fades out
                      ],
                      stops: [0.3, 1.0],
                    ),
                  ),
                ),
              ),

              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        color: Colors.white38,
                        onPressed: () {},
                        icon: const Icon(Icons.miscellaneous_services_sharp)),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Theme.of(context).primaryColor),
                              ),
                              Text(
                                subText[0],
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white38),
                              )
                            ],
                          ),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_circle_outline_rounded,
                                color: Colors.white60,
                              ),
                              label: Text(
                                'Add Device',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white60),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          )),
        ));

    // two buttons aligned horizontally
  }
}
