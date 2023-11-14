import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    this.controller,
    this.onChanged,
    this.placeholder = "Placeholder text",
    this.autofocus = false,
    this.focusNode,
    this.validator,
    this.suffixe,
    this.prefixe,
  });

  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? placeholder;
  final bool? autofocus;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final Widget? suffixe;
  final Widget? prefixe;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onChanged: onChanged,
      style: Theme.of(context).textTheme.bodySmall,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        suffixIconConstraints: const BoxConstraints(maxWidth: 50, minWidth: 20),
        prefixIconConstraints: const BoxConstraints(maxWidth: 50, minWidth: 20),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: prefixe,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: suffixe,
        ),
      ),
      validator: validator,
    );
  }
}
