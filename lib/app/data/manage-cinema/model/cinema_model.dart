import 'dart:convert';

import 'package:getx_pattern/app/domain/manage-cinema/entities/cinema_entity.dart';
import 'package:getx_pattern/app/domain/manage-cinema/entities/class_movie_entity.dart';
import 'package:getx_pattern/app/domain/manage-cinema/entities/movie_entity.dart';

import 'class_movie_model.dart';

class CinemaModel extends CinemaEntity {
  CinemaModel(
    final int id,
    final String name,
    final String city,
    final List<ClassMovieModel> classMovies,
    final Map<MovieEntity, ClassMovieEntity> movies,
  ) : super(
          city: city,
          id: id,
          classMovies: classMovies,
          movies: movies,
        );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'city': city,
      'classMovies': classMovies?.map((x) => x.toMap())?.toList(),
      'movies': movies,
    };
  }

  factory CinemaModel.fromMap(Map<String, dynamic> map) {
    return CinemaModel(
      map['id'],
      map['name'],
      map['city'],
      List<ClassMovieModel>.from(
          map['classMovies']?.map((x) => ClassMovieModel.fromMap(x))),
      Map<MovieEntity, ClassMovieEntity>.from(map['movies']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CinemaModel.fromJson(String source) =>
      CinemaModel.fromMap(json.decode(source));

  CinemaModel copyWith({
    int id,
    String name,
    String city,
    List<ClassMovieModel> classMovies,
    Map<MovieEntity, ClassMovieEntity> movies,
  }) {
    return CinemaModel(
      id ?? this.id,
      name ?? this.name,
      city ?? this.city,
      classMovies ?? this.classMovies,
      movies ?? this.movies,
    );
  }
}
