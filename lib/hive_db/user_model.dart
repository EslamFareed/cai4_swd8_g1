import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel {
  @HiveField(0)
  String name;

  @HiveField(1)
  int age;

  @HiveField(2)
  List<UserReview> userReviews;

  UserModel({required this.age, required this.name, required this.userReviews});
}

@HiveType(typeId: 1)
class UserReview {
  @HiveField(0)
  String reviewText;

  @HiveField(1)
  double rate;

  UserReview({required this.rate, required this.reviewText});
}
