import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.movie_filter_outlined),
        backgroundColor: Colors.blue,
        title: const Text('Movies'),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text('Blue Beetle', style: TextStyle(color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
                width: double.infinity,
                height: 390,
                child: Card(
                  child: Image(
                    image: CachedNetworkImageProvider(
                    'https://static.wikia.nocookie.net/marvel_dc/images/7/70/Jaime_Reyes_DC_Universe_004.jpg/revision/latest?cb=20230818001827'
                  ),
                  fit: BoxFit.cover,
                  ),
                )
              ),
          ],
        ),
      ),
    );
  }
}







