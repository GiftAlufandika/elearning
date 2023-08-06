import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            "You are familiar with the chemical formula of water, which is H2O. You can easily tell that two Hydrogen atoms and one Oxygen atom combine to form water. The Hydrogen and Oxygen atoms are joined together by chemical bonds in a process called chemical bonding. A chemical bond is the attraction between stable atoms",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Subject length",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Icon(
                Icons.timer,
                color: Color(0xFF674AEF),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "27 Hours ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Rating",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Icon(
                Icons.star,
                color: Color(0xFFFAC505),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "4.5/5.0 ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
