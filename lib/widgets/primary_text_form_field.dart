import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PrimaryTextFormField extends StatefulWidget {
  /// Create a TExtForm Field
  ///
  /// Create a TextForm Field With [hintText],[labelText],[controller],[validator],[isVisible],[prefixIconData],[haveSuffixIcon].
  /// [isVisible] set the obscureText to false by default
  /// [haveSuffixIcon] sets the suffix icon ie. visiblity to false by default
  PrimaryTextFormField(
      {super.key,
      this.hintText,
      this.controller,
      this.labelText,
      this.validator,
      this.isVisible = false,
      this.prefixIconData,
      this.haveSuffixIcon = false});

  /// set the Hitnt text of the TextFormField
  final String? hintText;

  /// set the Label text of the TextFormField
  final String? labelText;

  /// set the validation of the TextFormField
  final String? Function(String?)? validator;

  /// set the controller of the TextFormField
  final TextEditingController? controller;

  /// set the visibility of the input of TextFormField
  bool isVisible;

  /// set the suffix icon of the TextFormField if is true
  bool haveSuffixIcon;

  /// set the prefix icon of the TextFormField
  final IconData? prefixIconData;

  @override
  State<PrimaryTextFormField> createState() => _PrimaryTextFormFieldState();
}

class _PrimaryTextFormFieldState extends State<PrimaryTextFormField> {
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
