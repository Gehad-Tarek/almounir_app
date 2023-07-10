import 'package:flutter/material.dart';
import '../providers/language_setttings_provider.dart';
import 'account/account_screen.dart';
import 'cart/cart_screen.dart';
import 'categories/categories_screen.dart';
import 'home/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomNavigationBarDesign extends StatefulWidget {
  String title;

  BottomNavigationBarDesign({required this.title});

  @override
  _BottomNavigationBarDesignState createState() =>
      _BottomNavigationBarDesignState();
}

class _BottomNavigationBarDesignState extends State<BottomNavigationBarDesign> {
  int bottomSelectedIndex = 3;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 23),
          label: AppLocalizations.of(context)!.home),
      BottomNavigationBarItem(
          icon: Icon(Icons.category, size: 23),
          label: AppLocalizations.of(context)!.categories),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart, size: 23),
          label: AppLocalizations.of(context)!.cart),
      BottomNavigationBarItem(
        icon: Icon(Icons.person, size: 23),
        label: AppLocalizations.of(context)!.account,
      ),
    ];
  }
  PageController pageController = PageController(
    initialPage: 3,
    keepPage: true,
  );
  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }
  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: const <Widget>[
        HomeScreen(),
        CategoriesScreen(),
        CartScreen(),
        AccountScreen()
      ],
    );
  }
  @override
  void initState() {
    super.initState();
  }
  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          curve: Curves.ease, duration: const Duration(milliseconds: 10));
    });
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    LanguageSettingsProvider languageProvider = Provider.of(context);
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: SizedBox(
        height: languageProvider.currentLocale == "en"
            ? height * 0.11
            : height * 0.12,
        child: BottomNavigationBar(
          backgroundColor: Color(0xff0ca684),
          showSelectedLabels: true,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: bottomSelectedIndex,
          onTap: (index) {
            bottomTapped(index);
          },
          items: buildBottomNavBarItems(),
        ),
      ),
    );
  }
}
