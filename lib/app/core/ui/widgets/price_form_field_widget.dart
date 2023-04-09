import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validatorless/validatorless.dart';

import '../../formatter/real_input_formatter.dart';

class PriceFormFieldWidget extends StatefulWidget {
  final TextEditingController priceEC;

  const PriceFormFieldWidget({super.key, required this.priceEC});

  @override
  State<PriceFormFieldWidget> createState() => _PriceFormFieldWidgetState();
}

class _PriceFormFieldWidgetState extends State<PriceFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.priceEC,
      decoration: const InputDecoration(labelText: 'Preço'),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        RealInputFormatter(centavos: true),
      ],
      validator: Validatorless.multiple(
        [
          Validatorless.required('Preço é obrigatório'),
          // Validatorless.number('Preço deve ser um número'),
        ],
      ),
      // onSaved: (value) => _Produto.price = double.parse(value),
    );
  }
}
