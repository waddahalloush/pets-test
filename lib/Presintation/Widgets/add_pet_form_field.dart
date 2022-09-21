// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AddPetsFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final TextInputAction inputAction;
  final TextInputType inputType;
  final void Function(String)? submit;
  const AddPetsFormField({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.inputAction,
    required this.inputType,
    this.submit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: inputAction,
      onFieldSubmitted: submit
      // (val) {FocusScope.of(context).nextFocus();}
      ,
      controller: controller,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          label: Text(label),
          hintText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 10),
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          floatingLabelAlignment: FloatingLabelAlignment.start),
      textAlign: TextAlign.left,
    );
  }
}
