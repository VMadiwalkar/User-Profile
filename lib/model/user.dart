import 'package:uuid/uuid.dart';

const uuid = Uuid();

class User {
  final String id;
  final String firstName;
  final String lastName;
  final int age;
  final double number;

  User({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.number,
  }) : id = uuid.v4();
}
