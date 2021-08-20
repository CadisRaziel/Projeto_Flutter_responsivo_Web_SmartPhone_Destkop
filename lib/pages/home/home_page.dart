import 'package:flutter/material.dart';
import 'package:responsivo/breakpoints.dart';
import 'package:responsivo/pages/home/widgets/advantages_section/advantages_section.dart';
import 'package:responsivo/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:responsivo/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:responsivo/pages/home/widgets/course_section/course_section.dart';
import 'package:responsivo/pages/home/widgets/top_sections/top_sections.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var largura = constraints.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;
        //*Scaffold permite que o body tenha um tamanho grande, exemplo height 10000, width 10000 
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: largura < mobileBreakPointHome
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  //? repare que não necessariamente preciso ter variaveis de altura e largura, posso definir na unha igual abaixo
                  preferredSize: Size(double.infinity, 72),
                ),
          drawer: largura < mobileBreakPointHome ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              //*ListView pois precisamos rolar a tela para cima e para baixo
              child: ListView(
                children: [
                  TopSection(),
                  const SizedBox(height: 8,),
                  AdvantagesSection(),
                  const SizedBox(height: 4,),
                  CourseSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
//? biggest e smallest é a mesma coisa que printar maxWidth, minWidth, maxHeight, minHeight
// print(constraints.biggest);
// print(constraints.smallest);