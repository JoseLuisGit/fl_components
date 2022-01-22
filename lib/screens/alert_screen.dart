import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void showAlertCupertino(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('This is an Alert'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                    'Exercitation reprehenderit sunt ipsum proident ex sint deserunt. Exercitation id pariatur quis in aliqua nostrud culpa nostrud ut est voluptate exercitation id aliqua. Aliqua commodo cupidatat tempor dolore nulla consequat quis commodo est ad. Cupidatat nostrud id aute nostrud esse nisi labore adipisicing ut eu dolore magna ut ipsum. Pariatur laboris nulla ex laborum incididunt occaecat aliqua laboris deserunt excepteur exercitation.'),
                SizedBox(height: 8),
                FlutterLogo(
                  size: 100,
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok')),
            ],
          );
        });
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('This is an Alert'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                    'Exercitation reprehenderit sunt ipsum proident ex sint deserunt. Exercitation id pariatur quis in aliqua nostrud culpa nostrud ut est voluptate exercitation id aliqua. Aliqua commodo cupidatat tempor dolore nulla consequat quis commodo est ad. Cupidatat nostrud id aute nostrud esse nisi labore adipisicing ut eu dolore magna ut ipsum. Pariatur laboris nulla ex laborum incididunt occaecat aliqua laboris deserunt excepteur exercitation.'),
                SizedBox(height: 8),
                FlutterLogo(
                  size: 100,
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Platform.isAndroid ? showAlert(context) : showAlertCupertino(context);
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Show Alert',
            style: TextStyle(fontSize: 15),
          ),
        ),
        /*style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: const StadiumBorder(),
            elevation: 2
          ),*/
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.close,
        ),
      ),
    );
  }
}
