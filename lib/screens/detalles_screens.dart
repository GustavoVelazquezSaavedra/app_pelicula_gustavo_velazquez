import 'package:flutter/material.dart';
import 'package:peliculas/widgets/casting_cards.dart';

class DetallesScreens extends StatelessWidget {
  const DetallesScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            _PosterAndTitle(),
            _Overview(),
            _Overview(),
            _Overview(),
            _Overview(),
            _Overview(),
            _Overview(),
            CastingCards()
          ])),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 10),
          color: Colors.black12,
          child: Text(
            'Titulo de la pelicula',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiyOs5LXK3cUC0lTkuauDW9oHX7v2QDIiNog&usqp=CAU'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiyOs5LXK3cUC0lTkuauDW9oHX7v2QDIiNog&usqp=CAU'),
              height: 150,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'movie.title',
                style: textTheme.headline5,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'movie.originalTitle',
                style: textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_outlined,
                    size: 15,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'movie.voteAverage',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
          'Et reprehenderit irure do eiusmod mollit voluptate fugiat sint mollit anim id dolor laborum. Consectetur enim consequat in non exercitation culpa. Tempor esse labore qui sint ullamco nisi.'),
    );
  }
}
