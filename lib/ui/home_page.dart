import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.list), onPressed: () {}),
        actions: [
          IconButton(icon: const Icon(Icons.alarm), onPressed: () {}),
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          const Text('Welcome home.'),
          Column(
            children: [
              const Text('Rooms'),
              ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return OutlinedButton(
                    child: const Text('My Room'),
                    onPressed: () {},
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('data'),
                  Text('data'),
                ],
              ),
              GridView.count(
                crossAxisCount: 2,
                
              ),
            ],
          ),
        ],
      ),
    );
  }
}
