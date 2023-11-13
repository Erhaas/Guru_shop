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
      onChanged: onChanged,
      style: Theme.of(context).textTheme.bodySmall,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        suffixIconConstraints: const BoxConstraints(maxWidth: 50, minWidth: 20),
        prefixIcon: prefixe,
        suffixIcon: suffixe,
      ),
      validator: validator,
    );
  }
}
