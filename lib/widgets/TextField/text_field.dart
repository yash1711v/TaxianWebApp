import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/pallet.dart';

class CustomTextField extends StatelessWidget {
 final String? labelText;
 final String? hintText;
 final double? borderRadius;
 final TextEditingController controller;
  const CustomTextField({super.key,  this.labelText, required this.borderRadius, this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Pallet.secondary),
     cursorColor: Pallet.grey,
     controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 5),
          ),
       borderSide: const BorderSide(color: Pallet.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 5),
          ),
          borderSide: const BorderSide(color: Pallet.grey),
        ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 5),
          ),
          borderSide: const BorderSide(color: Pallet.grey),
        ),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 5),
          ),
        ),
        labelText: labelText,
       hintText: hintText,
        hintStyle: const TextStyle(color: Pallet.grey),
        labelStyle: const TextStyle(color: Pallet.grey),
      ),
    );
  }
}
