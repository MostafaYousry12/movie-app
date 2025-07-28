import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/pages/booking.dart';
import 'package:movie_app/pages/home_page.dart';
import 'package:movie_app/pages/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;

  late HomePage homePage;
  late Booking booking;
  late Profile profile;

  int currentIndex = 0;

  @override
  void initState() {
    homePage = HomePage();

    booking = Booking();
    profile = Profile();

    pages = [homePage, booking, profile];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          backgroundColor: Colors.black,
          color: const Color.fromARGB(255, 230, 168, 76),
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(
              () {
                currentIndex = index;
              },
            );
          },
          items: const [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.book,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
          ]),
      body: pages[currentIndex],
    );
  }
}
