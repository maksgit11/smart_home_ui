import 'package:flutter/material.dart';
import 'package:smart_home_ui/data/room.dart';

class RoomsListView extends StatelessWidget {
  final Function roomToggle;
  final int selectedIndex;
  const RoomsListView({
    Key? key,
    required this.roomToggle,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Scrollbar(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: rooms.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              borderRadius: BorderRadius.circular(25.0),
              onTap: () => roomToggle(index),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: selectedIndex == index
                      ? Border.all(color: Colors.grey, width: 2)
                      : Border.all(color: Colors.grey),
                  color: selectedIndex == index
                      ? Colors.grey[800]
                      : Colors.transparent,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      rooms[index],
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 10);
          },
        ),
      ),
    );
  }
}
