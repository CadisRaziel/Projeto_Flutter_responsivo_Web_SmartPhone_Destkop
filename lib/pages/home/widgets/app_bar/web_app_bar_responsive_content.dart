import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({Key? key}) : super(key: key);
//? utilize sempre o Expanded quando nao tivermos uma altura ou largura definida !!
  @override
  Widget build(BuildContext context) {
    return Expanded(
      //* Vamos colocar um layoutBuilder para pegar um tamanho e largura especifico de uma area
      child: LayoutBuilder(
        builder: (context, constraint) {
          // print('biggest ${constraint.biggest}, smallest ${constraint.smallest}');
          return Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  //*Sempre coloque uma largura em um LayoutBuilder em uma area especifica
                  //*pois se voce reparar no print, ele retorna uma altura 'infinity'
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search, color: Colors.grey),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Pesquise algo',
                              //*isCollapsed -> vai centralizar
                              isCollapsed: true),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //* Colocando os botoes personalizados que se escondem
              if (constraint.maxWidth >= 500) ...[
                //? repare nisso '...[]' fazendo isso podemos colocar mais de um widget dentro do if
                const SizedBox(
                  width: 32,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Regiões',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              if (constraint.maxWidth >= 600) ...[
                const SizedBox(
                  width: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Casas',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
