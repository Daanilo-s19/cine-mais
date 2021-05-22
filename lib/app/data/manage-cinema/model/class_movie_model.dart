import 'dart:convert';

import 'package:getx_pattern/app/domain/manage-cinema/entities/class_movie_entity.dart';

class ClassMovieModel extends ClassMovieEntity {
  ClassMovieModel(
    int id,
    int quantity,
    bool isThreeDimensions,
    Map<String, String> tools,
    List<DateTime> datetimes,
  ) : super(
            id: id,
            quantity: quantity,
            isThreeDimensions: isThreeDimensions,
            datetimes: datetimes,
            tools: tools);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quantity': quantity,
      'isThreeDimensions': isThreeDimensions,
      'tools': tools,
      'datetimes': datetimes?.map((x) => x.millisecondsSinceEpoch)?.toList(),
    };
  }

  factory ClassMovieModel.fromMap(Map<String, dynamic> map) {
    return ClassMovieModel(
      map['id'],
      map['quantity'],
      map['isThreeDimensions'],
      Map<String, String>.from(map['tools']),
      List<DateTime>.from(
          map['datetimes']?.map((x) => DateTime.fromMillisecondsSinceEpoch(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ClassMovieModel.fromJson(String source) =>
      ClassMovieModel.fromMap(json.decode(source));

  ClassMovieModel copyWith({
    int id,
    int quantity,
    bool isThreeDimensions,
    Map<String, String> tools,
    List<DateTime> datetimes,
  }) {
    return ClassMovieModel(
      id ?? this.id,
      quantity ?? this.quantity,
      isThreeDimensions ?? this.isThreeDimensions,
      tools ?? this.tools,
      datetimes ?? this.datetimes,
    );
  }
}
