import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    this.controller,
    this.onChanged,
    this.onEditingComplete,
    this.placeholder = "Placeholder text",
    this.autofocus = false,
    this.focusNode,
    this.maxLines = 1,
    this.validator,
    this.suffixe,
    this.prefixe,
  });

  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final String? placeholder;
  final bool? autofocus;
  final int? maxLines;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final Widget? suffixe;
  final Widget? prefixe;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      maxLines: maxLines,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        suffixIconConstraints: const BoxConstraints(maxWidth: 50, minWidth: 20),
        prefixIconConstraints: const BoxConstraints(maxWidth: 50, minWidth: 20),
        prefixIcon: suffixe != null
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: prefixe,
              )
            : null,
        suffixIcon: suffixe != null
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: suffixe,
              )
            : null,
      ),
      validator: validator,
    );
  }
}
