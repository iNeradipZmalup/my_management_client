import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_management_client/presentation/pages/register_page.dart';
import 'package:my_management_client/presentation/widgets/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          ButtonPrimary(
            onPressed: () {
              Navigator.pushReplacementNamed(context, RegisterPage.routeName);
            },
            title: 'Login',
          ),
          const Gap(30),
          ButtonSecondary(onPressed: () {}, title: 'Register'),
          const Gap(30),
          ButtonDelete(onPressed: () {}, title: 'Delete'),
        ],
      ),
    );
  }
}
