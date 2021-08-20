import 'package:flutter/material.dart';
import 'package:responsivo/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //*quando for tablet e tela de computador ele ja fica com os 3 icones e textos um do lado do outro
    Widget buildHorizontalAdvantages(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.maps_home_work,
            color: Colors.white,
            size: 40,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      );
    }

  //*Quando for celular menores os 3 icones vão ficar na vertical e o texto logo abaixo centralizado
    Widget buildVerticalAdvantages(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.maps_home_work,
            color: Colors.white,
            size: 40,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 14),
          )
        ],
      );
    }

    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= mobileBreakPointHome)
          return Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: Wrap(
              //*WrapAlignment -> vai dar espaçamento entre os componentes abaixo
              alignment: WrapAlignment.spaceEvenly,
              //*runSpacing -> para quando chegar no minimo de quebra de linha a linha de baixo centralize
              runSpacing: 16,
              spacing: 8,
              children: [
                buildHorizontalAdvantages(
                    '+10.000 imóveis alugados', 'Melhores preços do mercado'),
                buildHorizontalAdvantages(
                    '+10.000 imóveis alugados', 'Melhores preços do mercado'),
                buildHorizontalAdvantages(
                    '+10.000 imóveis alugados', 'Melhores preços do mercado'),
              ],
            ),
          );
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: buildVerticalAdvantages(
                    '+10.000 imóveis alugados', 'Venha conferir',),
              ),
              const SizedBox(height: 4,),
              Expanded(
                child: buildVerticalAdvantages(
                    '+10.000 imóveis alugados', 'Venha conferir'),
              ),
              const SizedBox(height: 4,),
              Expanded(
                child: buildVerticalAdvantages(
                    '+10.000 imóveis alugados', 'Venha conferir'),
              ),
            ],
          ),
        );
      },
    );
  }
}
