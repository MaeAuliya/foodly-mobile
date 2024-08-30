import 'package:equatable/equatable.dart';

class FoodCategory extends Equatable {
  const FoodCategory({
    required this.id,
    required this.title,
    required this.value,
    required this.imageUrl,
    required this.createdAt,
    required this.updatedAt
  });

  const FoodCategory.empty()
    : id = "",
      title = "",
      value = "",
      imageUrl = "",
      createdAt = "",
      updatedAt = "";

  final String id;
  final String title;
  final String value;
  final String imageUrl;
  final String createdAt;
  final String updatedAt;

  @override
  List<Object?> get props => [
    id,
    title,
    value,
    imageUrl,
    createdAt,
    updatedAt
  ];
}