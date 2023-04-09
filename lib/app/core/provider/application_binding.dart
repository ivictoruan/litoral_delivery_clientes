import 'package:flutter/material.dart';
import 'package:litoral_delivery_clientes/app/repositories/organizations_repository.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../services/api_services.dart';

// import '../../models/address_model.dart';
// import '../../models/organization_model.dart';
// import '../../models/product_model.dart';

class ApplicationBinding extends StatelessWidget {
  final Widget child;

  const ApplicationBinding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider(
        //   create: (context) => OrganizationModel(
        //     name: '',
        //     description: '',
        //     category: '',
        //     address: '',
        //     image1: '',
        //     products: <ProductModel>[],
        //   ),
        // ),
        // Provider(
        //   create: (context) => CustomDio(),
        // ),
        // Provider<AuthRepository>(
        //   create: (context) => AuthRepositoryImpl(
        //     dio: context.read(),
        //   ),
        // ),
        // ChangeNotifierProvider<OrganizationsRepository>(
        ChangeNotifierProvider(
          create: (context) =>
              OrganizationsRepository(ApiService(httpClient: http.Client())),
        ),
        // ChangeNotifierProvider(
        //   create: (context) => LoginController(
        //       // context.read<AuthRepository>(),
        //       ),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => ProductRegistrationControllerImpl(
        //       // context.read<AuthRepository>(),
        //       ),
        // ),
      ],
      child: child,
    );
  }
}
