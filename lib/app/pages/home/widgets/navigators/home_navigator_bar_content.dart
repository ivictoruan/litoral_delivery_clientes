import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/ui/widgets/custom_error_widget.dart';
import '../../../../repositories/organizations_repository.dart';
import '../bottom_enter_register_widget.dart';
import '../organization_tile.dart';

class HomeNavigatorionBarContent extends StatefulWidget {
  const HomeNavigatorionBarContent({super.key});

  @override
  State<HomeNavigatorionBarContent> createState() =>
      _HomeNavigatorionBarContentState();
}

class _HomeNavigatorionBarContentState
    extends State<HomeNavigatorionBarContent> {
  bool loadingOrganizationList = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              height: 35,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ChoiceChip(
                      label: const Text('Lojas'),
                      selected: true,
                      onSelected: (bool selected) {
                        // Lógica para lidar com a seleção do chip
                      },
                    ),
                    const SizedBox(width: 10), // Espaçamento entre os chips
                    ChoiceChip(
                      label: const Text('Mais Baratos'),
                      selected: false,
                      onSelected: (bool selected) {
                        // Lógica para lidar com a seleção do chip
                      },
                    ),
                    const SizedBox(width: 10), // Espaçamento entre os chips

                    ChoiceChip(
                      label: const Text('Descontos'),
                      selected: false,
                      onSelected: (bool selected) {
                        // Lógica para lidar com a seleção do chip
                      },
                    ),
                    const SizedBox(width: 10), // Espaçamento entre os chips
                    ChoiceChip(
                      label: const Text('Aberto'),
                      selected: false,
                      onSelected: (bool selected) {
                        // Lógica para lidar com a seleção do chip
                      },
                    ),
                  ],
                ),
              ),
            ),

            Consumer<OrganizationsRepository>(
              builder: (context, repository, child) {
                return FutureBuilder(
                  initialData: const [],
                  future: repository.getOrganizations(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    var organizations = snapshot.data;
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                        return const Center(
                            child: LinearProgressIndicator(
                          minHeight: 1.3,
                        ));
                      case ConnectionState.waiting:
                        return const Center(
                            child: LinearProgressIndicator(
                          minHeight: 1.3,
                        ));
                      default:
                        if (snapshot.hasError) {
                          return CustomErrorWidget(
                            onPressed: () => print("oi"),
                          );
                        } else {
                          return Expanded(
                            child: ListView.builder(
                              itemCount: organizations.length,
                              itemBuilder: (BuildContext context, int index) {
                                var organization = organizations[index];
                                return OrganizationTile(
                                  organization: organization,
                                );
                              },
                            ),
                          );
                        }
                    }
                  },
                );
              },
            ),
            // const SizedBox(height: 385),
            const BottomEnterRegisterWidget(),
          ],
        ),
      ),
    );
  }
}
