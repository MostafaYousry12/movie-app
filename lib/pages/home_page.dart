import 'package:flutter/material.dart';
import 'package:movie_app/pages/custom_carousel_slider.dart';
import 'package:movie_app/pages/custom_trending_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageUrl = [
    "assets/images/infinity.jpg",
    "assets/images/salman.jpg",
    "assets/images/shahrukhmovies.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/wave.png",
                  height: 35,
                  width: 35,
                ),
                const Text(
                  " Hello, Shivam",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/images/boy.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
            Text(
              "Welcome To,",
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Text(
                  "Filmy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Fun",
                  style: TextStyle(
                    color: Colors.orange.withOpacity(0.8),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Center(child: CustomCarouselSlider(imageURL: imageUrl)),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Top Trending Movies",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20, right: 20),
                itemCount: 3,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  final movies = [
                    {
                      "image": "assets/images/infinity.jpg",
                      "name": "Infinity Wars",
                      "type": "Action Movie",
                    },
                    {
                      "image": "assets/images/pushpa.jpg",
                      "name": "PushBa",
                      "type": "Action Movie",
                    },
                    {
                      "image": "assets/images/salman.jpg",
                      "name": "Salman",
                      "type": "Action Movie",
                    },
                  ];
                  return CustomTrendingCard(
                    movieImage: movies[index]['image']!,
                    movieName: movies[index]['name']!,
                    movieType: movies[index]['type']!,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
