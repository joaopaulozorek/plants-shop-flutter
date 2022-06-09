import 'package:flutter/material.dart';

import '../widgets/filter_text_item.dart';
import '../widgets/normal_card_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
          ),
          child: const Center(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
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
            child: Container(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  NormalCardItemWidget(),
                  SizedBox(width: 16),
                  NormalCardItemWidget(),
                  SizedBox(width: 16),
                  NormalCardItemWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
