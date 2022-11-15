import 'package:flutter/material.dart';
import 'package:practical_work_2/data/model/user.dart';
import 'package:practical_work_2/domain/entity/role_entity.dart';
import 'package:practical_work_2/pages/Authorization.dart';
import 'package:practical_work_2/core/db/data_base_helper.dart';
import 'package:toast/toast.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = new GlobalKey<FormState>();
  var _dbHelper;

  final _conLogin = TextEditingController();
  final _conPassword = TextEditingController();
  final _conCPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dbHelper = DataBaseHelper.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Регистрация',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 60,
              ),

              // Логин
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 450),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                    child: TextFormField(
                      controller: _conLogin,
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return "Пустое поле";

                        if (!validateLogin(value))
                          return "Логин должен содержать хотя бы 1 букву, цифру и знак";
                      },
                      decoration: InputDecoration(
                        labelText: 'Введите логин',
                        prefixIcon: Icon(Icons.person),
                      ),
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              // Пароль
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 450),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                    child: TextFormField(
                      controller: _conPassword,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'Пустое поле';
                      },
                      decoration: InputDecoration(
                        labelText: 'Введите пароль',
                        prefixIcon: Icon(Icons.lock),
                      ),
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              // Повторите пароль
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 450),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                    child: TextFormField(
                      controller: _conCPassword,
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return "Пустое поле";
                      },
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: 'Повторите пароль',
                        prefixIcon: Icon(Icons.lock),
                      ),
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              // Button Вход
              Column(
                children: [
                  Container(
                    width: 350,
                    height: 40,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey[300]),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0)),
                        ),
                      ),
                      onPressed: () {
                        String login = _conLogin.text;
                        String passwd = _conPassword.text;
                        String cpasswd = _conCPassword.text;
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Проверка данных')),
                          );
                          if (passwd != cpasswd) {
                            alertDialog(context, 'Пароли не совпадают');
                          } else if (passwd.length < 3)
                            alertDialog(context, 'Пароль слишком короткий');
                          else {
                            _formKey.currentState!.save();

                            User uModel = User(
                                login: login,
                                password: passwd,
                                idRole: RoleEnum.user);
                            _dbHelper.saveData(uModel).then((userData) {
                              alertDialog(context, "Успешная регистрация");

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Authorization()));
                            }).catchError((error) {
                              print(error);
                              alertDialog(
                                  context, "Ошибка: Регистрация не выполнена");
                            });
                          }
                        }
                      },
                      child: const Text(
                        'Зарегистрироваться',
                        style: TextStyle(
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),

              // Button регистрация
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 460),
                      child: Text(
                        'Есть аккаунт?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Authorization()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: const Center(
                        child: Text(
                          'Войти',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
            ]),
          ),
        ),
      ),
    );
  }

  alertDialog(BuildContext context, String msg) {
    Toast.show(msg, context,
        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
  }

  validateLogin(String login) {
    final emailReg = new RegExp(
        r"^(?=.{3,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$");
    return emailReg.hasMatch(login);
  }
}
