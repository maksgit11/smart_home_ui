import 'package:flutter/material.dart';
import 'package:smart_home_ui/data/room.dart';

class RoomsListView extends StatelessWidget {
  const RoomsListView({
    Key? key,
    required this.roomIndex,
  }) : super(key: key);

  final int roomIndex;

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
              onTap: () {
                roomIndex == index;
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: Colors.grey),
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
