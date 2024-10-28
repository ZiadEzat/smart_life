import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_life/model/ip_model.dart';
import 'package:smart_life/views/add_device.dart';
import 'package:smart_life/widgets/background.dart';
import 'package:smart_life/model/user_model.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  String name = 'Hello Ziad Essam 👋';
  List subText = ['Welcome back home', 'Stay safe'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // labeltext for user input
      home: Scaffold(
        body: Stack(children: [
          const BackgroundScreen(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    color: Colors.transparent,
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
                            context.watch<UserModel>().name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Theme.of(context).primaryColor),
                          ),
                          Text(
                            subText[0],
                            style: const TextStyle(
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
                                const BorderRadius.all(Radius.circular(10))),
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => addDevice()));
                          },
                          icon: const Icon(
                            Icons.add_circle_outline_rounded,
                            color: Colors.white60,
                          ),
                          label: const Text(
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
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      "Add your device to get started.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Theme.of(context).primaryColor,
                    unselectedItemColor: Colors.white38,
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.data_usage),
                        label: 'Usage',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.document_scanner_outlined),
                        label: 'Bills',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profile',
                      ),
                    ],
                    currentIndex: 0, // Set the current index
                    elevation: 10,
                    backgroundColor: Colors.transparent,
                    onTap: (index) {
                      // Handle item tap
                    },
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );

    // two buttons aligned horizontally
  }
}
