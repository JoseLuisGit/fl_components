import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                CustomInput(
                    hintText: 'Name',
                    labelText: 'Insert name',
                    iconData: Icons.people),
                SizedBox(height: 5),
                CustomInput(
                    hintText: 'Last Name',
                    labelText: 'Insert last name',
                    iconData: Icons.person_outline_outlined),
                SizedBox(height: 5),
                CustomInput(
                    hintText: 'email',
                    labelText: 'Insert email',
                    iconData: Icons.email,
                    textInputType: TextInputType.emailAddress,),
                SizedBox(height: 5),
                CustomInput(
                    hintText: 'password',
                    labelText: 'Insert password',
                    iconData: Icons.email,
                    obscureText: true,
                    ),
              ],
            ),
          ),
        ));
  }
}
