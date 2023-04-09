import 'package:flutter/material.dart';
import 'package:litoral_delivery_clientes/app/core/ui/styles/text_styles.dart';

class CustomWillPopScope extends StatelessWidget {
  final String message;
  final String routeToBack;
  // final VoidCallback onComeback; 
  final Widget child;

  const CustomWillPopScope({
    super.key,
    required this.child,
    required this.message,
    required this.routeToBack,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Center(
                child: Text(
                  message,
                  style: context.textStyles.textTitle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              actionsAlignment: MainAxisAlignment.spaceBetween,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, routeToBack);
                  },
                  child: const Text('Sim'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text('Não'),
                ),
              ],
            );
          },
        );
        return shouldPop!;
      },
      child: child,
    );
  }
}
