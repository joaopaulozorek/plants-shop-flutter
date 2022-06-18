import 'package:flutter/material.dart';

class FilterTextItemWidget extends StatelessWidget {
  final String text;
  final bool selected;
  const FilterTextItemWidget({
    Key? key,
    required this.text,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(text,
          style: selected
              ? const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )
              : const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                )),
    );
  }
}
