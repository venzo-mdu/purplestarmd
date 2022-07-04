import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key, required this.defaultValue, required this.values, required this.onItemSelected}) : super(key: key);
  final dynamic Function(String? selectedValue) onItemSelected;
  final String defaultValue;
  final List<String> values;

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? value;
  @override
  void initState() {
    super.initState();
    value = widget.defaultValue;
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              items: widget.values.map((dropValue) {
                return DropdownMenuItem<String>(
                  value: dropValue,
                  child: Text(dropValue),
                );
              }).toList(),
              onChanged: (newDropdownValue) {
                setState(() {
                  value = newDropdownValue!;
                });
                widget.onItemSelected(newDropdownValue);
              },
            ),
          ),
        )
      ],
    );
  }
}
