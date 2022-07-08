import 'package:flutter/material.dart';

class Device {
  final String title;
  final String subTitle;
  final IconData icon;

  const Device({
    required this.title,
    required this.subTitle,
    required this.icon,
  });
}

const List<Device> devices = [
  Device(title: 'Lighting', subTitle: 'subText', icon: Icons.lightbulb_outline),
  Device(title: 'Android TV', subTitle: 'subText', icon: Icons.android),
  Device(title: 'Security', subTitle: 'subText', icon: Icons.lock_outline),
  Device(title: 'Internet', subTitle: 'subText', icon: Icons.wifi),
];

const List<Device> devicesLR = [
  Device(title: 'Lighting', subTitle: 'subText', icon: Icons.lightbulb_outline),
  Device(title: 'Security', subTitle: 'subText', icon: Icons.lock_outline),
  Device(title: 'Internet', subTitle: 'subText', icon: Icons.wifi),
];
