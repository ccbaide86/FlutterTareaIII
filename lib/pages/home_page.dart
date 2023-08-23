import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text('Blue Beetle', style: TextStyle(color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
                width: double.infinity,
                height: 390,
                child: Card(
                  child: Image(
                    image: CachedNetworkImageProvider(
                    'https://static.wikia.nocookie.net/marvel_dc/images/7/70/Jaime_Reyes_DC_Universe_004.jpg/revision/latest?cb=20230818001827'
                  ),
                  fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RatingBar.builder(
                    itemCount: 5,
                    initialRating: 3.5,
                    allowHalfRating: true,
                    itemSize: 20,
                    itemBuilder: (context,_){
                      return const Icon(Icons.star, color: Colors.amber,);
                    },
                    onRatingUpdate: (raiting){
                      print(raiting);
                    },
                  ), 
                ],
              )
            ),
              const SizedBox(
                width: double.infinity,
                child: Text('Descripcion', style: TextStyle(color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold)
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 200,
                child: Card(
                  child: Text('Reparto', style: TextStyle(color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold)
              ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}







