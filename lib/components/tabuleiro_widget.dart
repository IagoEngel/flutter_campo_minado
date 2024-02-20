import 'package:flutter/material.dart';
import 'package:flutter_campo_minado/components/campo_widget.dart';
import 'package:flutter_campo_minado/models/campo.dart';
import 'package:flutter_campo_minado/models/tabuleiro.dart';

class TabuleiroWidget extends StatelessWidget {
  final Tabuleiro tabuleiro;
  final void Function(Campo) onAbrir;
  final void Function(Campo) onAlterarMarcacao;

  const TabuleiroWidget(
      {super.key,
      required this.tabuleiro,
      required this.onAbrir,
      required this.onAlterarMarcacao});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: tabuleiro.colunas,
      children: tabuleiro.campos
          .map((c) => CampoWidget(
              campo: c, onAbrir: onAbrir, onAlterarMarcacao: onAlterarMarcacao))
          .toList(),
    );
  }
}
