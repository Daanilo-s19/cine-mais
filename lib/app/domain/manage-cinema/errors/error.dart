abstract class Failure implements Exception {}

class FailureManage extends Failure {
  final String message;

  FailureManage({this.message});
}
