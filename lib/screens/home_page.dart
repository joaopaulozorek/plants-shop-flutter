import 'package:flutter/material.dart';

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
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'All',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Succulents',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Palm trees',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cactus',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Roses',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Jacks',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
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
