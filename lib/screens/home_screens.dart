import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_providers.dart';
import 'package:peliculas/widgets/card_swiper.dart';
import 'package:peliculas/widgets/movie_slider.dart';
import 'package:provider/provider.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MoviesProviders = Provider.of<MoviesProviders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas en cines'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          CardSwiper(movies: MoviesProviders.OndisplayMovies),
          MovieSlider(
            movies: MoviesProviders.Popularmovie,
            title: 'Populares',
          )
        ]),
      ),
    );
  }
}
