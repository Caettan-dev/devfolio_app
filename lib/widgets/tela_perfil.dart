
import 'package:flutter/material.dart';
import 'perfil_dev.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person), text: 'Júlia'),
                Tab(icon: Icon(Icons.person_outline), text: 'Miguel'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                PerfilDev(
                  nome: 'Júlia Caetano',
                  foto: 'https://github.com/Caettan-dev.png',
                  cargo: 'Desenvolvedora Mobile Flutter',
                  email: 'julia@exemplo.com',
                  cidade: 'Sua cidade, UF',
                  sobre: 'Estudante de Desenvolvimento de Sistemas no SENAI, focada em '
                      'desenvolver projetos com interfaces limpas em Flutter.',
                  skills: [
                    {'texto': 'Flutter', 'icone': Icons.phone_android},
                    {'texto': 'Dart', 'icone': Icons.code},
                    {'texto': 'Git & GitHub', 'icone': Icons.merge_type},
                    {'texto': 'Material Design', 'icone': Icons.palette},
                  ],
                ),
                PerfilDev(
                  nome: 'Miguel Almeida',
                  foto: 'assets/miguel.png',
                  cargo: 'Desenvolvedor Mobile Flutter',
                  email: 'miguel@exemplo.com',
                  cidade: 'Sua cidade, UF',
                  sobre: 'Estudante de desenvolvimento mobile, focado em '
                      'organização de código e layouts responsivos.',
                  gradiente: [
                    Color(0xFF0284C7),
                    Color(0xFF4F46E5),
                  ],
                  skills: [
                    {'texto': 'Flutter', 'icone': Icons.phone_android},
                    {'texto': 'Dart', 'icone': Icons.code},
                    {'texto': 'Layouts Responsivos', 'icone': Icons.grid_view},
                    {'texto': 'Firebase', 'icone': Icons.cloud},
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

