import 'package:flutter/material.dart';

import '../widgets/filter_text_item.dart';
import '../widgets/normal_card_item.dart';
import '../widgets/special_offer_card_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.only(bottom: 8, top: 8),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey[200],
          ),
          child: const Center(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(
                  Icons.mic,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FilterTextItemWidget(text: 'All', selected: true),
                    FilterTextItemWidget(text: 'Succulents', selected: false),
                    FilterTextItemWidget(text: 'Palm trees', selected: false),
                    FilterTextItemWidget(text: 'Cactus', selected: false),
                    FilterTextItemWidget(text: 'Roses', selected: false),
                    FilterTextItemWidget(text: 'Jacks', selected: false),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Popular',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                child: SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      NormalCardItemWidget(
                        plantName: 'Pilea',
                        price: '\$ 30',
                      ),
                      NormalCardItemWidget(
                        plantName: 'Orquidea',
                        price: '\$ 40',
                      ),
                      NormalCardItemWidget(
                        plantName: 'Epiphyllum',
                        price: '\$ 25',
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Special offer',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                child: SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SpecialOfferCardItemWidget(
                        plantName: 'Monstera',
                        price: '\$ 35',
                        oldPrice: '\$ 45',
                      ),
                      SpecialOfferCardItemWidget(
                        plantName: 'Dionea',
                        price: '\$ 25',
                        oldPrice: '\$ 55',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: Colors.white,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            label: 'bla',
            icon: Icon(Icons.grid_view_outlined),
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.messenger_outline),
            label: 'messages',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
