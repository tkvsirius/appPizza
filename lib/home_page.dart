import 'package:first/presentation/list_product/list_product.dart';
import 'package:first/presentation/registration/registration_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  static const String route = '/homepage_screen';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool choiceButton = false;

  static final List<Widget> _widgetOptions = <Widget>[
    ListProduct(
      listAssets: listAssets,
      description: listDescription,
      time: listTime,
    ),
    RegistrationScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      choiceButton = !choiceButton;
      _selectedIndex = index;
    });
  }

  void choiceSelectedColor() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_pizza.png',
              color:
                  choiceButton ? Colors.green.shade400 : Colors.grey.shade400,
            ),
            label: 'Рецепты',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Вход',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green.shade400,
        onTap: _onItemTapped,
      ),
    );
  }

  // increaseValue() {
  //   setState(() {
  //     chancheColor = !chancheColor;
  //   });
  // }
}
