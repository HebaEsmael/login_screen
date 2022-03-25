import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget DefualtButton({
  Color buttonColor = Colors.teal,
  double buttonWidth = double.infinity,
  required VoidCallback? onPressedFunc,
  required buttonText,
  bool isUpperCase = true,
}) => Container(
  //color: Colors.teal,
  //width: double.infinity,
    color: buttonColor,
    width: buttonWidth,
    child: MaterialButton(
      onPressed: onPressedFunc,
      child: Text(
        //'Login',
        isUpperCase ? buttonText.toUpperCase() : buttonText,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    )
);

Widget DefaultTextFormField({
  required TextEditingController userEnterText,
  required validateMessage,
  bool keyboardTypeIsOff = true,
  VoidCallback? submitted(value)?,
  String? fieldText,
  IconData? preFieldIcon,
  suffixFieldIcon,
  bool isObscureText = false,

}) => TextFormField(
  controller: userEnterText,
  keyboardType: keyboardTypeIsOff ? TextInputType.text : TextInputType.emailAddress,
  onFieldSubmitted: submitted,
  obscureText: isObscureText ? true : false,

  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    ),
    labelText: fieldText,
    prefixIcon: Icon(
      preFieldIcon,
    ),
    suffixIcon: suffixFieldIcon,
  ),
  validator: (value){
    if(value == null || value.isEmpty){
      return validateMessage;
    }
    return null;
  },
);
