import 'package:flutter/material.dart';
import 'package:litoral_delivery_clientes/app/core/ui/helpers/size_extentions.dart';
import 'package:litoral_delivery_clientes/app/core/ui/styles/text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Email"),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Senha"),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: context.percentageWidth(0.5),
                child: ElevatedButton(
                  child: const Text("Entrar"),
                  onPressed: () {},
                ),
              ),
              Divider(color: Colors.grey[500], height: 50),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, "/register"),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ainda não é cadastrado?",
                          style: context.textStyles.textMedium),
                      const SizedBox(width: 4),
                      Text("Cadastre-se!", style: context.textStyles.textBold),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
