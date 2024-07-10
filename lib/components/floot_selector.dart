import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_car_parking/config/colors.dart';

class FloorSelector extends StatefulWidget {
  const FloorSelector({super.key});

  @override
  _FloorSelectorState createState() => _FloorSelectorState();
}

class _FloorSelectorState extends State<FloorSelector> {
  String? _selectedFloor;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      focusColor: Colors.white,
      value: _selectedFloor,
      items: const [
        DropdownMenuItem(
          child: Text("1st Floor (Medium)"),
          value: "1st Floor",
        ),
        DropdownMenuItem(
          child: Text("2nd Floor (Normal)"),
          value: "2nd Floor",
        ),
        DropdownMenuItem(
          child: Text("3rd Floor (Small)"),
          value: "3rd Floor",
        ),
      ],
      onChanged: (value) {
        setState(() {
          _selectedFloor = value;
        });
      },
      hint: Text(
        _selectedFloor ?? "1st Floor",
        style: TextStyle(
          color: blueColor,
          fontSize: 15,
        ),
      ),
    );
  }
}
