import 'package:practical_work_2/domain/entity/role_entity.dart';

class UserEntity {
  late int id;
  final String login;
  final String password;
  final RoleEnum idRole;

  UserEntity({
    this.id = 0,
    required this.login,
    required this.password,
    required this.idRole,
  });
}
