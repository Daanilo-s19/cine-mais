import 'dart:convert';

import 'package:getx_pattern/app/domain/manage-cinema/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  MovieModel(
    String title,
    String director,
    String mainActor,
    String age,
    CategoryType category,
    double duration,
  ) : super(
          title: title,
          director: director,
          mainActor: mainActor,
          age: age,
          category: category,
          duration: duration,
        );

  MovieModel copyWith({
    String title,
    String director,
    String mainActor,
    String age,
    CategoryType category,
    double duration,
  }) {
    return MovieModel(
      title ?? this.title,
      director ?? this.director,
      mainActor ?? this.mainActor,
      age ?? this.age,
      category ?? this.category,
      duration ?? this.duration,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'director': director,
      'mainActor': mainActor,
      'age': age,
      'category': category,
      'duration': duration,
    };
  }

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      map['title'],
      map['director'],
      map['mainActor'],
      map['age'],
      map['category'],
      map['duration'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) =>
      MovieModel.fromMap(json.decode(source));
}
