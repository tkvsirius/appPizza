import 'package:first/helpers/constants.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({super.key});
  static const String route = '/registration_screen';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool openRegistered = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            // alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.86,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 248),
                          _buildTextOtus(),
                          const SizedBox(height: 81),
                          _buildLogin(context),
                          const SizedBox(height: 16),
                          _buildPassword(context),
                          openRegistered
                              ? const SizedBox()
                              : _buildPasswordRegistered(context),
                          const SizedBox(height: 52),
                          openRegistered
                              ? _buildButtonLogin(context)
                              : _buildButtonReg(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 140,
                bottom: 10,
                child: openRegistered
                    ? _buildButtonRegistered()
                    : _buildEnteredApp(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector _buildEnteredApp() {
    return GestureDetector(
      onTap: () {
        increaseValue();
      },
      child: const Text(
        'Войти в прложение',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  GestureDetector _buildButtonRegistered() {
    return GestureDetector(
      onTap: () {
        increaseValue();
      },
      child: const Text(
        'Зарегистрироваться',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  increaseValue() {
    setState(() {
      openRegistered = !openRegistered;
      print(openRegistered);
    });
  }

  Text _buildTextOtus() {
    return const Text('Otus.food',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 30));
  }

  Widget _buildLogin(BuildContext context) {
    return Container(
      width: 232,
      height: 52,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: _usernameController,
        validator: (String? value) {
          if (value == null) {
            return 'Поле не может быть пустым';
          }

          if (value.isEmpty) {
            return 'Поле не может быть пустым';
          }

          if (value.length < 6) {
            return 'Должно быть меньше 6ти символов';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: 'логин',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: const Icon(
            Icons.person,
            color: colorBorder,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            gapPadding: 10,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordRegistered(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        width: 232,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          controller: _passwordController,
          validator: (String? value) {
            if (value == null) {
              return 'Поле не может быть пустым';
            }
            if (value.isEmpty) {
              return 'Поле не может быть пустым';
            }
            if (value.length < 6) {
              return 'Должно быть меньше 6ти символов';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: 'пароль еще раз',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            prefixIcon: const Icon(
              Icons.lock,
              color: colorBorder,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              gapPadding: 10,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPassword(BuildContext context) {
    return Container(
      width: 232,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: _passwordController,
        validator: (String? value) {
          if (value == null) {
            return 'Поле не может быть пустым';
          }
          if (value.isEmpty) {
            return 'Поле не может быть пустым';
          }
          if (value.length < 6) {
            return 'Должно быть меньше 6ти символов';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: 'пароль',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: const Icon(
            Icons.lock,
            color: colorBorder,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            gapPadding: 10,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonLogin(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: colorButtonRegistered,
        ),
        child: Container(
          width: 232,
          height: 46,
          alignment: Alignment.center,
          child: const Text(
            'Войти',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonReg(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: colorButtonRegistered,
        ),
        child: Container(
          width: 232,
          height: 46,
          alignment: Alignment.center,
          child: const Text(
            'Регистрация',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
