import 'package:flutter/material.dart';
import 'package:litoral_delivery_clientes/app/core/ui/helpers/size_extentions.dart';
import 'package:litoral_delivery_clientes/app/core/ui/styles/text_styles.dart';

class BottomEnterRegisterWidget extends StatelessWidget {

  const BottomEnterRegisterWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Visibility(
                  visible: true, // se usuário estiver cadastrado
                  child: InkWell(
                    onTap: () {
                      showLoginOrRegisterModal(context);
                    },
                    child: Container(
                      width: context.screenWidth,
                      height: 65,
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 3.5,
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Ainda não tem uma conta?",
                              style: context.textStyles.textSemiBold.copyWith(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Entrar ou cadastrar-se",
                              style: context.textStyles.textBold.copyWith(
                                fontSize: 14,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
  }
  
  void showLoginOrRegisterModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: SizedBox(
                  width: context.percentageWidth(0.1),
                  height: 4,
                  child: const Divider(
                    height: 4,
                    thickness: 3,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Entrar'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/login");
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('Cadastrar-se'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/register");
              },
            ),
          ],
        );
      },
    );
  }
}