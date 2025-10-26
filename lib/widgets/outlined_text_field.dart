import 'package:flutter/material.dart';

class OutlinedTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final int maxLines;
  final int minLines;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  const OutlinedTextField({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.maxLines = 1,
    this.minLines = 1,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(16)
              )
          )
      ),
      onChanged: (value) {
        onChanged?.call(value);
      },
    );
  }
}