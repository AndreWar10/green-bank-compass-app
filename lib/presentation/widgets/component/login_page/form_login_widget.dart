import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class FormLoginWidget extends StatefulWidget {
  const FormLoginWidget({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _formKey = formKey,
        _emailController = emailController,
        _passwordController = passwordController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  State<FormLoginWidget> createState() => _FormLoginWidgetState();
}

class _FormLoginWidgetState extends State<FormLoginWidget> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._formKey,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 75,
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: BaseColors().getWhiteColor(),
            ),
            child: TextFormField(
              controller: widget._emailController,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: BaseColors().getGreyColor(),
                  ),
                  hintText: 'E-mail'),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (val) {
                return val != null && !EmailValidator.validate(val)
                    ? 'Insira um email válido'
                    : null;
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 75,
            margin: EdgeInsets.only(top: 28),
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: BaseColors().getWhiteColor(),
            ),
            child: TextFormField(
                controller: widget._passwordController,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  icon: Icon(
                    Icons.key,
                    color: BaseColors().getGreyColor(),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _showPassword =
                            !_showPassword; //inverte o valor no clique
                      });
                    },
                    child: Icon(_showPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                ),
                obscureText: _showPassword == false
                    ? true
                    : false, //esconder/mostrar password
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  return val != null && val.length < 6
                      ? 'A senha deve possuir pelo menos 6 caracteres'
                      : null;
                }),
          ),
        ],
      ),
    );
  }
}
