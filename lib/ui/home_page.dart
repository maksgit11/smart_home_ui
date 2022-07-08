import 'package:flutter/material.dart';
import 'package:smart_home_ui/data/device.dart';
import 'package:smart_home_ui/ui/widgets/rooms_listview.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int _roomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 11, 10, 10),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          actions: [
            IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: const Icon(Icons.info_outline), onPressed: () {}),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Welcome home.', style: TextStyle(fontSize: 28)),
              const SizedBox(height: 20),
              const Text('Rooms', style: TextStyle(fontSize: 22)),
              const SizedBox(height: 10),
              RoomsListView(roomIndex: _roomIndex),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Devices', style: TextStyle(fontSize: 20)),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () {},
                    child: const Text(
                      '+Add Device',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              if(_roomIndex == 0) const DevicesMyRoom(),
              if(_roomIndex == 1) const DevicesMyRoom(),
              if(_roomIndex == 2) const DevicesMyRoom(),
              if(_roomIndex == 3) const DevicesMyRoom(),
            ],
          ),
        ),
      ),
    );
  }
}

class DevicesMyRoom extends StatelessWidget {
  const DevicesMyRoom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
        children: devices.map((device) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey[700],
            ),
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Icon(device.icon),
                    ),
                    Text(device.title),
                    Text(device.subTitle),
                  ],
                ),
                Positioned(
                  top: 1,
                  right: 1,
                  child: Switch(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
