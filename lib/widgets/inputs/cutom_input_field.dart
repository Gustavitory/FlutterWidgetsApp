import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final Icon? icon;
  final void Function(String)? onChange;
  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      onChanged: onChange,
      //validacion:
      validator: (value) {
        if (value == null) return "Este campo es requerido";
        if (value.length < 3) return "Longitud minima";
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.access_alarm),
        prefixIcon: const Icon(Icons.add_road),
        icon: icon ?? const Icon(Icons.abc_rounded),
        labelText: labelText,
        helperText: helperText,
      ),
    );
  }
}
