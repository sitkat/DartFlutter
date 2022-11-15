import 'package:flutter/material.dart';
import 'package:practical_work_2/core/db/data_base_helper.dart';
import 'package:practical_work_2/data/model/user.dart';
import 'package:practical_work_2/domain/entity/role_entity.dart';
import 'package:practical_work_2/pages/Home.dart';
import 'package:practical_work_2/pages/Registration.dart';
import 'package:toast/toast.dart';

class Authorization extends StatefulWidget {
  const Authorization({Key? key}) : super(key: key);

  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  final _formKey = new GlobalKey<FormState>();
  var _dbHelper;

  final _conLogin = TextEditingController();
  final _conPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dbHelper = DataBaseHelper.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Авторизация',
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
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return "Пустое поле";
                        },
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
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

                // Button Вход
                Container(
                  width: 350,
                  height: 40,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey[300]),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0)),
                      ),
                    ),
                    onPressed: () {
                      String login = _conLogin.text;
                      String passwd = _conPassword.text;

                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Проверка данных')),
                        );

                        _formKey.currentState!.save();

                        User uModel = User(
                            login: login,
                            password: passwd,
                            idRole: RoleEnum.user);
                        _dbHelper.getLoginUser(login,passwd).then((userData) {
                          alertDialog(context, "Успешная авторизация");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Home()));
                        }).catchError((error) {
                          print(error);
                          alertDialog(
                              context, "Ошибка: Авторизация не выполнена");
                        });
                      }
                    },
                    child: const Text(
                      'Войти',
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
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
                          'Нет аккаунта?',
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
                                builder: (context) => Registration()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: const Center(
                          child: Text(
                            'Регистрация',
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
      ),
    );
  }

  alertDialog(BuildContext context, String msg) {
    Toast.show(msg, context,
        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
  }
}
