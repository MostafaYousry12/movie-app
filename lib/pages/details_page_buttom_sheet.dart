import 'package:flutter/material.dart';

class DetailsPageButtomSheet extends StatelessWidget {
  const DetailsPageButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 400,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 47, 54, 67),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Infinity Wars",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Action, Advanture",
            style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(.8),
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "An epic superhero movie that brings together all your favorite Marvel characters to fight the most powerful villain yet.",
            style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(.8),
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
