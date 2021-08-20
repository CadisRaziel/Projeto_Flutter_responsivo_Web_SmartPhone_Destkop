import 'package:flutter/material.dart';
import 'package:responsivo/pages/home/widgets/custom_text_field/custom_search_field.dart';
import 'package:responsivo/shared/themes/app_image.dart';

class TopSectionSmartphone extends StatelessWidget {
  const TopSectionSmartphone({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            AspectRatio(
              //*aspectRatio -> para se adequar a os inumeros tamanhos de tela de celular disponivel
              aspectRatio: 3.2,
              child: Image.asset(
                AppImages.imgAluguel,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Encontre Imóveis para alugar próximas de você',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Imóveis de qualidade e um aluguel que cabe no seu bolso',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 14),
                    //*Precisamos especificar uma largura para esse textfield
                    //*para isso criamos um container em cima da column
                    CustomSearchField()
                  ],
                ),
                ),
          ],
        );
  }
}