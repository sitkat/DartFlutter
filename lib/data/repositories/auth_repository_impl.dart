import 'package:practical_work_2/common/data_base_request.dart';
import 'package:practical_work_2/data/model/user.dart';
import 'package:practical_work_2/domain/entity/role_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:practical_work_2/domain/repositories/auth_repositories.dart';
import 'package:sqflite/sqlite_api.dart';

import '../../core/db/data_base_helper.dart';

class AuthRepositoriesImpl implements AuthRepositories {
  final _db = DataBaseHelper.instance.dataBase;

  @override
  String get table => DataBaseRequest.tableUser;

  @override
  Future<Either<String, RoleEnum>> signIn(String login, String password) async{
    try{
      var user = (await  _db.query(table, 
      where: 'login = ?', 
      whereArgs: [login])).map((e) => User.toFromMap(e));

      if (user.isEmpty){
        return Left('Такого пользователя нет');
      }

      if (user.first.password != password){
        return Left('Неправильный пароль');
      }
      
      return Right(user.first.idRole);
    } on DatabaseException catch(error){
      return Left('');
    }
  }

  @override
  Future<Either<String, bool>> signUp(String login, String password) async {
    try {
      await _db.insert(
          table,
          User(login: login, password: password, idRole: RoleEnum.user)
              .toMap());
      return const Right(true);
    } on DatabaseException catch (error) {
      return const Left('');
      print(error.result);
    }
  }
}
