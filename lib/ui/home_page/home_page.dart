import 'package:flutter/material.dart';
import 'package:smart_home_ui/ui/home_page/widgets/living_room_devices.dart';
import 'package:smart_home_ui/ui/home_page/widgets/my_room_devices.dart';
import 'package:smart_home_ui/ui/home_page/widgets/rooms_listview.dart';
import 'package:smart_home_ui/ui/widgets/app_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _roomIndex = 0;
  final List<bool> _switch1 = [false, false, false, false];

  void _roomToggle(int index) {
    setState(() {
      _roomIndex = index;
    });
  }

  void _deviceToggle(e, index) {
    setState(() {
      _switch1[index] = e;
    });
  }

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
        bottomNavigationBar: const AppNavBar(current: 0),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text('Welcome home.', style: TextStyle(fontSize: 28)),
              const SizedBox(height: 20),
              const Text('Rooms', style: TextStyle(fontSize: 22)),
              const SizedBox(height: 10),
              RoomsListView(
                selectedIndex: _roomIndex,
                roomToggle: _roomToggle,
              ),
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
              if (_roomIndex == 0)
                MyRoomDevices(
                  switch1: _switch1,
                  deviceToggle: _deviceToggle,
                ),
              if (_roomIndex == 1)
                LivingRoomDevices(
                  switch1: _switch1,
                  deviceToggle: _deviceToggle,
                ),
              // if (_roomIndex == 2) const MyRoomDevices(),
              // if (_roomIndex == 3) const MyRoomDevices(),
            ],
          ),
        ),
      ),
    );
  }
}
