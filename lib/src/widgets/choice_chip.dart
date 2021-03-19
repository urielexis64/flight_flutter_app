import 'package:flight_app/constants.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool isSelected;

  CustomChoiceChip({
    this.icon,
    this.text,
    this.isSelected,
  });

  @override
  _CustomChoiceChipState createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Constants.smallPadding,
          horizontal: Constants.defaultPadding),
      decoration: widget.isSelected
          ? BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(Constants.bigRadius)),
              color: Constants.lightColor.withOpacity(0.15))
          : null,
      child: Row(
        children: [
          Icon(
            widget.icon,
            size: 20,
            color: Constants.lightColor,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            widget.text,
            style: TextStyle(fontSize: 14, color: Constants.lightColor),
          )
        ],
      ),
    );
  }
}
