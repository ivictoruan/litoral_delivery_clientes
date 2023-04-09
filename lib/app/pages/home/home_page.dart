import 'package:flutter/material.dart';
import 'package:litoral_delivery_clientes/app/core/ui/styles/text_styles.dart';
import 'widgets/navigators/home_navigator_bar_content.dart';
import 'widgets/navigators/orders_navigator_bar_content.dart';
import 'widgets/navigators/profile_navigator_bar_content.dart';
import 'widgets/navigators/search_navigator_bar_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 3;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> children = [
    const HomeNavigatorionBarContent(),
    const SearchNavigatorionBarContent(),
    const OrdersNavigatorBarContent(),
    const ProfileNavigatorionBarContent(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Litoral Delivery",
          style: context.textStyles.textSemiBold.copyWith(
            fontSize: 20,
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.start,
        ),
        elevation: 0.5,
      ),
      body: children.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.65),
        unselectedLabelStyle: TextStyle(
          color: Colors.black.withOpacity(0.65),
        ),
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Lojas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
