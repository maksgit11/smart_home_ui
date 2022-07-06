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
  Device(title: 'Lighting', subTitle: 'subText', icon: Icons.light),
  Device(title: 'Android TV', subTitle: 'subText', icon: Icons.android),
  Device(title: 'Security', subTitle: 'subText', icon: Icons.security),
  Device(title: 'Internet', subTitle: 'subText', icon: Icons.wifi),
];
