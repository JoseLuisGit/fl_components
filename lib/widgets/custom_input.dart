import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final IconData? iconData;
  final TextInputType textInputType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInput({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.iconData,
    this.textInputType = TextInputType.text, 
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: textInputType,
      initialValue:  formValues[formProperty] ,
      textCapitalization: TextCapitalization.words,
      onChanged: (value)=> formValues[formProperty] = value,
      validator: (value){
        if( value == null ) return null;
        return value.length > 3 ? null : 'Es menor a 3';
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        icon: iconData != null ? Icon(iconData, color: AppTheme.primary,) : null,

      ),
    );
  }
}