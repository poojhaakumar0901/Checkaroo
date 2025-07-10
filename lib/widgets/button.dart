import "package:flutter/material.dart";

class CommonButton extends StatelessWidget {
  const CommonButton({required this.onPressed, required this.label, super.key});
  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(final BuildContext context) => SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFD43B),
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
      onPressed: onPressed,
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
    ),
  );
}
