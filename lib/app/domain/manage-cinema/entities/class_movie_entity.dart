class ClassMovieEntity {
  final int id;
  final int quantity;
  final bool isThreeDimensions;
  final Map<String, String> tools;
  final List<DateTime> datetimes;

  ClassMovieEntity({
    this.datetimes,
    this.tools,
    this.id,
    this.quantity,
    this.isThreeDimensions,
  });
}
