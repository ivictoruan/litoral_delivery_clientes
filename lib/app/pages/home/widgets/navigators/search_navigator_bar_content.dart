import 'package:flutter/material.dart';

class SearchNavigatorionBarContent extends StatelessWidget {
  const SearchNavigatorionBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      'Eletrônicos',
      'Roupas',
      'Calçados',
      'Acessórios',
      'Bebidas',
      'Alimentos',
      'Beleza',
      'Esportes',
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          children: [
            Form(
              child: SizedBox(
                height: 45,
                child: TextFormField(
                  textInputAction: TextInputAction.search,
                  decoration: const InputDecoration(
                    hintText: "Pesquise um Produto/Loja",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      // Navegue para a tela de itens correspondente aqui
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
