import 'package:flutter/material.dart';

import '../widgets/filter_text_item.dart';

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
                FilterTextItemWidget(text: 'Succulents', selected: true),
                FilterTextItemWidget(text: 'Palm trees', selected: true),
                FilterTextItemWidget(text: 'Cactus', selected: true),
                FilterTextItemWidget(text: 'Roses', selected: true),
                FilterTextItemWidget(text: 'Jacks', selected: true),
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
        ],
      ),
    );
  }
}
