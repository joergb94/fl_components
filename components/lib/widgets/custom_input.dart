
import 'package:flutter/material.dart';

class InputDefault extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;    
  final TextInputType? textInputType;
  final bool obscureText;
  
  final String formProperty;
  final Map<String, String> formValues;

  const InputDefault({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.textInputType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues, 
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     autofocus: false,
     initialValue: '',
     textCapitalization: TextCapitalization.words,
     keyboardType: textInputType,
     obscureText: obscureText,
     onChanged: (value){
      formValues[formProperty] = value;
     },
     validator: (value) {
       if(value == null) return 'This input is required';
        return value.length < 3?'This input is required 3 characters':null;
     },
     autovalidateMode: AutovalidateMode.onUserInteraction,
     decoration: InputDecoration(
       hintText:hintText,
       labelText:labelText,
       helperText: helperText,
       suffixIcon: suffixIcon== null? null: Icon(suffixIcon),
       icon:icon== null? null: Icon(icon),
     ),
    );
  }
}