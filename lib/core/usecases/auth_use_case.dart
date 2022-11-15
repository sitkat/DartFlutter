import 'package:dartz/dartz.dart';
import 'package:practical_work_2/domain/entity/role_entity.dart';

abstract class AuthUseCase<Type, Params>{
  Future <Either<String, RoleEnum>> signIn(Params params);
  Future <Either<String, bool>> signUp(Params params);

}