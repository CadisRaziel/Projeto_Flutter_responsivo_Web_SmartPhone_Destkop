import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:responsivo/shared/themes/app_image.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AppImages.imgCasa,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4,
        ),
        Flexible(
          child: LayoutBuilder(
            builder: (context, constraints) {
              //? Esse print é porque tava dando overflow, ai colocamos ele dentro do Layoutbuilder com esse print
              //? Para ver a altura se é infinity, caso for temos que arrumar pois isso é o que esta dando overflow
              // print(constraints.biggest);
        
              //*AutoSizeText -> package para que ao diminuir a tela, o texto for diminuindo junto, assim não da overflow
              return AutoSizeText(
                'Sobrado, 2 vagas na garagem',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
                    minFontSize: 8,
              );
            },
          ),
        ),
        Text(
          'Corretora Aluguel.com',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'R\$2.000',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white),
        ),
      ],
    );
  }
}
