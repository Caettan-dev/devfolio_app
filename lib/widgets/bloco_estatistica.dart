import 'package:flutter/material.dart';

import 'selo_destaque.dart';

/// Bloco de estatística (Card Material com elevação) usado na grade.
/// Se [selo] for informado, ele aparece sobreposto no canto superior direito.
class BlocoEstatistica extends StatelessWidget {
  final IconData icone;
  final String valor;
  final String rotulo;
  final Color cor;
  final String? selo;

  const BlocoEstatistica({
    super.key,
    required this.icone,
    required this.valor,
    required this.rotulo,
    this.cor = const Color(0xFF4F46E5),
    this.selo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          // Conteúdo principal do bloco
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icone, size: 32, color: cor),
                  const SizedBox(height: 6),
                  Text(
                    valor,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: cor,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    rotulo,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
          // Selo sobreposto (Stack + Positioned)
          if (selo != null)
            Positioned(
              top: 8,
              right: 8,
              child: SeloDestaque(texto: selo!),
            ),
        ],
      ),
    );
  }
}
