import 'package:flutter/material.dart';

/// Chip reutilizável para exibir uma habilidade (skill).
class ChipHabilidade extends StatelessWidget {
  final String texto;
  final IconData icone;

  const ChipHabilidade({
    super.key,
    required this.texto,
    this.icone = Icons.code,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(icone, size: 18, color: const Color(0xFF4F46E5)),
      label: Text(texto),
      backgroundColor: const Color(0xFFEEF0FF),
      side: const BorderSide(color: Color(0xFF4F46E5), width: 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
