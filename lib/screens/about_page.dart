import 'package:contacts_app/utils/constants.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final String? initial;
  final String? name;
  final String? number;
  final String? email;

  AboutPage({this.initial, this.name, this.number, this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sideColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(100.0),
            color: contentColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.green.shade700,
                  child: Text(
                    initial!,
                    style: const TextStyle(
                        fontSize: 50.0,
                        color: sideColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  name!,
                  style: const TextStyle(fontSize: 20.0, color: sideColor),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.mail),
            title: Text(
              email!,
              style: const TextStyle(fontSize: 22.0, letterSpacing: 2.0),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: Text(
              number!,
              style: const TextStyle(fontSize: 22.0, letterSpacing: 2.0),
            ),
          ),
        ],
      ),
    );
  }
}
