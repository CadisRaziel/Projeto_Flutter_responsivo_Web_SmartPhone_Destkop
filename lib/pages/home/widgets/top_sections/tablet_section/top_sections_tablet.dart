import 'package:flutter/material.dart';
import 'package:responsivo/pages/home/widgets/custom_text_field/custom_search_field.dart';
import 'package:responsivo/shared/themes/app_image.dart';

class TopSectionTablet extends StatelessWidget {
  const TopSectionTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Stack(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Image.asset(
              AppImages.imgAluguel,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Card(
              color: Colors.black,
              elevation: 8,
              child: Container(
                padding: const EdgeInsets.all(24),
                width: 350,
                child: Column(
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
            ),
          )
        ],
      ),
    );
  }
}
