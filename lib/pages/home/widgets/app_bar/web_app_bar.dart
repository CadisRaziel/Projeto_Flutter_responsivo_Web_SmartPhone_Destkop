import 'package:flutter/material.dart';

import 'web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      //*toolbarHeight -> aumenta a altura da appbar
      toolbarHeight: 72,
      title: Row(
        children: [
          Text('Aluguel.com'),
          const SizedBox(
            width: 32,
          ),
          //*Ao invez de colocar um Expanded com um container para empurrar os botões do lado direito
          //*Vamos criar um widget para colocar 2 itens que ficaram escondidos caso a tela seja pequena
          //* e com isso ele tambem vai empurrar os botoes para o lado direito
          //*resumo, estamos criando um widget com uma funcionalidade especial
          WebAppBarResponsiveContent(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
          const SizedBox(
            width: 24,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Entrar',
              style: TextStyle(fontSize: 14),
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text('Cadastre-se', style: TextStyle(fontSize: 14)),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
