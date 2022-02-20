import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formState = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'name': 'Jose',
      'last_name': 'Quispe',
      'email': 'joseluisstacruz@gmail.com',
      'password': 'pass123456',
      'rol': 'admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formState,
              child: Column(
                children: [
                  CustomInput(
                      formValues: formValues,
                      formProperty: 'name',
                      hintText: 'Name',
                      labelText: 'Insert name',
                      iconData: Icons.people),
                  const SizedBox(height: 8),
                  CustomInput(
                      formValues: formValues,
                      formProperty: 'last_name',
                      hintText: 'Last Name',
                      labelText: 'Insert last name',
                      iconData: Icons.person_outline_outlined),
                  const SizedBox(height: 8),
                  CustomInput(
                    formValues: formValues,
                    formProperty: 'email',
                    hintText: 'email',
                    labelText: 'Insert email',
                    iconData: Icons.email,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 8),
                  CustomInput(
                    formValues: formValues,
                    formProperty: 'password',
                    hintText: 'password',
                    labelText: 'Insert password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    value: formValues['rol'],
                    items: const [
                      DropdownMenuItem(value: 'admin' ,child: Text('Admin')),
                      DropdownMenuItem(value: 'client' ,child: Text('Client')),
                      DropdownMenuItem(value: 'super' ,child: Text('Super'))
                    ], 
                    onChanged: (value){
                      print(value);
                      formValues['rol'] = value ?? 'Admin';
                    })
                  ,
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        print(formValues);
                        if (!formState.currentState!.validate()) {
                          return;
                        }
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar')),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
