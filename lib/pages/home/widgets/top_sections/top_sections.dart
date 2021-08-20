import 'package:flutter/material.dart';
import 'package:responsivo/pages/home/widgets/top_sections/smartphone_section/top_sections.smartphone.dart';
import 'package:responsivo/pages/home/widgets/top_sections/tablet_section/top_sections_tablet.dart';
import 'package:responsivo/pages/home/widgets/top_sections/web_section/top_sections_web.dart';

import '../../../../breakpoints.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //========================== AppBar(parte do topo) WEB ======================================
    return LayoutBuilder(
      builder: (context, constraint) {
        final maxWidth = constraint.maxWidth;
        if (maxWidth >= mobileBreakPointTablet) {
          //*AspectRatio -> serve para manter sempre a mesma proporção da imagem
          return TopSectionWeb();
        }

        //========================== AppBar(parte do topo) TABLET ======================================

        //*Verificando se é tablet, pois no tablet teremos uma tela statica pois o tablet não precisa ficar aumentando e dimunuindo o navegador
        if (maxWidth >= mobileBreakPointHome) {
          return TopSectionTablet();
        }

        //========================== AppBar(parte do topo) SMARTPHONE ======================================

        //*Caso nao for o layout de web ou tablet ele vai retornar um layout para celular
        return TopSectionSmartphone();
      },
    );
  }
}
