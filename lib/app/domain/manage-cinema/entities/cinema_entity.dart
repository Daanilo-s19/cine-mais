import 'package:getx_pattern/app/data/manage-cinema/model/class_movie_model.dart';
import 'package:getx_pattern/app/domain/manage-cinema/entities/class_movie_entity.dart';
import 'package:getx_pattern/app/domain/manage-cinema/entities/movie_entity.dart';

class CinemaEntity {
  final int id;
  final String name;
  final String city;
  final List<ClassMovieModel> classMovies;
  final Map<MovieEntity, ClassMovieEntity> movies;

  CinemaEntity({
    this.city,
    this.id,
    this.name,
    this.classMovies,
    this.movies,
  });
}
