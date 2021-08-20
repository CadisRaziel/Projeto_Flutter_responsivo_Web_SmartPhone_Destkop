import 'package:flutter/material.dart';
import 'package:responsivo/pages/home/widgets/course_item/course_item.dart';

import '../../../../breakpoints.dart';

class CourseSection extends StatelessWidget {
  const CourseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return GridView.builder(
        //*Repare que com o gridDeleate e o SliverGridDelegateWithMaxCrossAxisExtent não precisamos de um Layout builder para ver os tamanhos
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //*maxCrossAxisExtent -> não deixa o quadrado passar de 250, quando chega aos 250 de altura ele cria um novo quadrado ao lado
            maxCrossAxisExtent: 250,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            //*childAspectRatio -> 1 é o formato padrao, caso queremos um espaçamento maior colocamos 0.1 ate 0.9
            childAspectRatio: 1),
        //*padding -> caso tiver no celular ou tablet ele vai por 16 de padding se for web vai deixar como 5
        padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal:
                constraints.maxWidth >= mobileBreakPointTablet ? 5 : 16),
        //*physics -> Não permite scroll dentro do gridView, com isso o scroll fica apenas no ListView onde essa classe esta instanciada ! (para nao ter conflito de scroll)
        physics: NeverScrollableScrollPhysics(),
        //*shrinkWrap -> encurta a largura do GridView para caber todos os itens
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return CourseItem();
        },
      );
    });
  }
}
