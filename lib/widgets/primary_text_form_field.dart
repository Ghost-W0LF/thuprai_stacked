import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PrimaryTextFormField extends StatefulWidget {
  PrimaryTextFormField(
      {super.key,
      this.hintText,
      this.controller,
      this.labelText,
      this.validator,
      this.isVisible = true,
      this.prefixIconData,
      this.haveSuffixIcon = false});
  final String? hintText;
  final String? labelText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  bool isVisible;
  bool haveSuffixIcon;
  final IconData? prefixIconData;

  @override
  State<PrimaryTextFormField> createState() => _PrimaryTextFormFieldState();
}

class _PrimaryTextFormFieldState extends State<PrimaryTextFormField> {
  void showPassword() {}

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        obscureText: !widget.isVisible,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.prefixIconData),
          suffixIcon: widget.haveSuffixIcon
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.isVisible = !widget.isVisible;
                    });
                  },
                  icon: Icon(widget.isVisible
                      ? Icons.visibility
                      : Icons.visibility_off))
              : null,
          hintText: widget.hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ));
  }
}
