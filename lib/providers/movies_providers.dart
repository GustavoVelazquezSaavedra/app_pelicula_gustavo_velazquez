import 'package:flutter/cupertino.dart';

class MoviesProviders extends ChangeNotifier {
  MoviesProviders() {
    print('coriendo');

    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    print('corriendo el func');
  }
}
