import 'package:flutter/material.dart';
import 'package:litoral_delivery_clientes/app/core/ui/helpers/size_extentions.dart';

class CustomErrorWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const CustomErrorWidget({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: context.percentageHeight(0.35)),
          const Text("Não foi possível carregar as informações."),
          TextButton(
            child: const Text("Tente novamente"),
            onPressed: () {
              onPressed ??
                  print("Fazer com que se faça a requisição novamente!");
            },
          ),
        ],
      ),
    );
  }
}
