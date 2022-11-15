import 'package:dartz/dartz.dart';
import 'package:practical_work_2/domain/entity/role_entity.dart';

abstract class AuthRepositories {
  String get table;

  Future<Either<String,RoleEnum>> signIn(String login, String password);
  Future<Either<String,bool>> signUp(String login, String password);
} 