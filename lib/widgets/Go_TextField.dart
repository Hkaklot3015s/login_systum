import 'package:flutter/material.dart';

class GoTextField extends StatelessWidget {
  String title;
  TextEditingController controller;
  FormFieldValidator? validator;

  GoTextField({
    super.key,
    required this.title,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            blurRadius: 10,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          hintText: title,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xffC0C0C0),
          ),
          contentPadding: const EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.outline,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
