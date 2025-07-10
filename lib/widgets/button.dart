import "package:flutter/material.dart";

class Button extends StatelessWidget {
  const Button({required this.onPressed, required this.label, super.key});

  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(final BuildContext context) => SizedBox(
    width: double.infinity,
    child: TextButton(onPressed: onPressed, child: Text(label)),
  );
}
