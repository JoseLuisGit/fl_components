import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final IconData? iconData;
  final TextInputType textInputType;
  final bool obscureText;

  const CustomInput({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.iconData,
    this.textInputType = TextInputType.text, 
    this.obscureText = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: textInputType,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value){
          print(value);
      },
      validator: (value){
        if( value == null ) return null;
        return value.length > 3 ? null : 'Es menor a 3';
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        icon: Icon(iconData, color: AppTheme.primary,),

      ),
    );
  }
}