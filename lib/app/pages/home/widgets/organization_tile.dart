import 'package:flutter/material.dart';
import 'package:litoral_delivery_clientes/app/core/ui/styles/text_styles.dart';

import '../../../models/organization_model.dart';

class OrganizationTile extends StatelessWidget {
  final OrganizationModel organization;

  const OrganizationTile({super.key, required this.organization});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 25,
          ),
          Positioned(
            bottom: 2,
            right: 4,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
            ),
          ),
          const SizedBox(width: 4),
        ],
      ),
      title: Text(
        organization.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: context.textStyles.textSemiBold.copyWith(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        organization.description,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: context.textStyles.textLight.copyWith(
          fontSize: 12,
          color: Colors.black,
          fontStyle: FontStyle.italic,
        ),
      ),
      trailing: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(2),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            organization.category.isEmpty ? "Categoria" : organization.category,
            style: context.textStyles.textSemiBold.copyWith(
              fontSize: 8,
              color: Colors.black,
            ),
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
