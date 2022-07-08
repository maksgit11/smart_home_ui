import 'package:flutter/material.dart';
import 'package:smart_home_ui/data/device.dart';

class MyRoomDevices extends StatelessWidget {
  final bool switch1;
  final Function deviceToggle;
  const MyRoomDevices({
    Key? key,
    required this.switch1,
    required this.deviceToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        mainAxisSpacing: 25,
        crossAxisSpacing: 25,
        crossAxisCount: 2,
        children: devices.map((device) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.grey[800],
            ),
            padding: const EdgeInsets.all(15.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Icon(
                        device.icon,
                        size: 30,
                      ),
                    ),
                    const SizedBox(height: 35),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            device.title,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            device.subTitle,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Switch(
                    value: switch1,
                    onChanged: (bool e) => deviceToggle(e),
                    activeColor: Colors.white,
                    activeTrackColor: Colors.grey,
                    inactiveThumbColor: Colors.grey[700],
                    inactiveTrackColor: Colors.black87,
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