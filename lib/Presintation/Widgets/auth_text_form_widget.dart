// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AuthFormField extends StatelessWidget {
  final String label;
  
  final IconData picon;
  final TextInputType textInputType;
  final Widget? sicon;
  final bool obsecure;
  final TextEditingController controller;
  final String? Function(String?) validat;
  final TextInputAction inputAction;

  final void Function(String)? submit;
  const AuthFormField({
    Key? key,
    required this.label,
 
    required this.picon,
    required this.textInputType,
    this.sicon,
    this.obsecure = false,
    required this.controller,
    required this.validat,
    required this.inputAction,
    this.submit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure,
      textInputAction: inputAction,
      onFieldSubmitted: submit
      // (val) {FocusScope.of(context).nextFocus();}
      ,
      controller: controller,
      keyboardType: textInputType,
      validator: validat,
      decoration: InputDecoration(
          prefixIcon: Icon(picon),
          suffixIcon:
              sicon != null ? const Icon(Icons.visibility_off) : const Text(""),
          labelText: label,
        
          alignLabelWithHint: true,
          contentPadding: const EdgeInsets.all(3),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
         
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 10),
          floatingLabelAlignment: FloatingLabelAlignment.center),
      textAlign: TextAlign.left,
    );
  }
}
