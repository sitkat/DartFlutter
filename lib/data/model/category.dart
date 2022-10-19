import 'package:practical_work_2/data/model/role.dart';
import '../../domain/entity/category_entity.dart';

class Category extends CategoryEntity{
  late int id;
  final String name;

  Category({required this.name}) : super(name: name);

  Map<String,dynamic> toMap(){
    return {
      'name' : name,
    };
  }

  factory Category.toFromeMap(Map<String, dynamic> json) {
    return Category(name: json['name']);
  }
}