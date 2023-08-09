import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final Icon? icon;
  final TextInputType type;
  final String formProperty;
  final Map<String, String> formValues;
  final bool obscureText;
  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.type = TextInputType.text,
    required this.formProperty,
    required this.formValues,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: type,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      //validacion:
      validator: (value) {
        if (value == null) return "Este campo es requerido";
        if (value.length < 3) return "Longitud minima";
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        // suffixIcon: const Icon(Icons.access_alarm),
        // prefixIcon: const Icon(Icons.add_road),
        // icon: icon ?? const Icon(Icons.abc_rounded),
        labelText: labelText,
        helperText: helperText,
      ),
    );
  }
}
