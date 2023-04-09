import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:litoral_delivery_clientes/app/models/organization_model.dart';

import '../core/exceptions/repository_exception.dart';
import '../core/services/api_services.dart';

class OrganizationsRepository extends ChangeNotifier {
  final ApiService apiService;
  // ignore: prefer_final_fields
  List<OrganizationModel> _organizations = [];

  List<OrganizationModel> get organizations => _organizations;

  OrganizationsRepository(this.apiService) {
    // getOrganizations().then((organizations) {
    //   _organizations = organizations;
    //   notifyListeners();
    // });
  }

  Future<List<OrganizationModel>> getOrganizations() async {
    try {
      final response = await apiService.get("organizations");
      if (response.statusCode == 200) {
        List<dynamic> organizationList =
            jsonDecode(utf8.decode(response.bodyBytes));
        List<OrganizationModel> organizations = organizationList
            .map((json) => OrganizationModel.fromJson(json))
            .toList();
        log(organizations.toString());

        return organizations;
      } else {
        throw RepositoryException(message: "Que erro é esse?");
      }
    } catch (e, s) {
      const String message = "Was not possible to get organizations from API!";
      log(message, error: e, stackTrace: s);
      throw RepositoryException(message: message);
    }
  }
}
