import 'package:flutter/material.dart';

import 'bloco_estatistica.dart';

/// Tela 02 — Dashboard de Projetos & Métricas.
/// TROQUE os números pelos dados reais dos seus projetos.
class TelaDashboard extends StatelessWidget {
  const TelaDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Meus números',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              _resumoSuperior(),
              const SizedBox(height: 20),
              const Text(
                'Estatísticas de projetos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              _gradeEstatisticas(),
            ],
          ),
        ),
      ),
    );
  }

  /// Row + Expanded: duas faixas com proporção 2:1.
  Widget _resumoSuperior() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF4F46E5), Color(0xFF9333EA)],
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Projetos no semestre',
                    style: TextStyle(color: Colors.white70)),
                SizedBox(height: 4),
                Text(
                  '7 apps',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFF4F46E5)),
            ),
            child: const Column(
              children: [
                Icon(Icons.trending_up, color: Color(0xFF4F46E5)),
                SizedBox(height: 4),
                Text('100%',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18)),
                Text('Concluído',
                    style: TextStyle(fontSize: 11, color: Colors.black54)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// GridView.count com os blocos de estatísticas.
  Widget _gradeEstatisticas() {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 1.1,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        BlocoEstatistica(
          icone: Icons.folder_copy,
          valor: '12',
          rotulo: 'Repositórios',
          selo: 'TOP',
        ),
        BlocoEstatistica(
          icone: Icons.commit,
          valor: '148',
          rotulo: 'Commits',
          cor: Color(0xFF16A34A),
        ),
        BlocoEstatistica(
          icone: Icons.phone_android,
          valor: '7',
          rotulo: 'Apps Flutter',
          cor: Color(0xFF0284C7),
          selo: 'NOVO',
        ),
        BlocoEstatistica(
          icone: Icons.widgets,
          valor: '35',
          rotulo: 'Widgets criados',
          cor: Color(0xFFDC2626),
        ),
        BlocoEstatistica(
          icone: Icons.bug_report,
          valor: '0',
          rotulo: 'Erros de overflow',
          cor: Color(0xFF9333EA),
          selo: 'ZERO',
        ),
        BlocoEstatistica(
          icone: Icons.school,
          valor: '9',
          rotulo: 'Aulas concluídas',
          cor: Color(0xFFEA580C),
        ),
      ],
    );
  }
}
