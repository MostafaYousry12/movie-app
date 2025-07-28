import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailsPageButtomSheet extends StatefulWidget {
  const DetailsPageButtomSheet({super.key});

  @override
  State<DetailsPageButtomSheet> createState() => _DetailsPageButtomSheetState();
}

class _DetailsPageButtomSheetState extends State<DetailsPageButtomSheet> {
  List<String> getFormattedDates() {
    final now = DateTime.now();
    final formatter = DateFormat('EEE d');
    return List.generate(7, (index) {
      final date = now.add(Duration(days: index));
      return formatter.format(date);
    });
  }

  int track = 0;
  @override
  Widget build(BuildContext context) {
    final dates = getFormattedDates();
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
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dates.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    track = index;
                    setState(() {});
                  },
                  child: Container(
                    width: 100,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffeed51e),
                        border: Border.all(
                          color: track == index ? Colors.white : Colors.black,
                          width: 2,
                        )),
                    child: Center(
                      child: Text(
                        dates[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
