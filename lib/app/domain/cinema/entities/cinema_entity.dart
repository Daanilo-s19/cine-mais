import 'package:getx_pattern/app/domain/cinema/entities/class_movie_entity.dart';
import 'package:getx_pattern/app/domain/cinema/entities/movie_entity.dart';

class CinemaEntity {
  final String name;
  final List<ClassMovieEntity> classMovies;
  final Map<MovieEntity, ClassMovieEntity> movies;

  CinemaEntity({
    this.name,
    this.classMovies,
    this.movies,
  });
}
