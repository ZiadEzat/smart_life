import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:smart_life/model/ip_model.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => IpModel(),
        child: MaterialApp(
          // labeltext for user input
          home: Scaffold(
              body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Enter IP Address'),
                TextField(
                  controller: TextEditingController(),
                  onSubmitted: (ip) {
                    context.read<IpModel>().FetchData(ip);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          context.read<IpModel>().GetReq('on');
                        },
                        child: const Text("ON")),
                    ElevatedButton(
                        onPressed: () {
                          context.read<IpModel>().GetReq('on');
                        },
                        child: const Text("OFF"))
                  ],
                )
              ],
            ),
          )),
        ));

    // two buttons aligned horizontally
  }
}
