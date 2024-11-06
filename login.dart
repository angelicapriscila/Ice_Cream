import 'package:flutter/material.dart';
import 'package:helloworld/Ice_Cream.dart';
//import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0Xffaecae0),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 16),
                Text(
                  'Entrar no Ice Cream',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Image.network(
                    'https://img.lovepik.com/png/20231126/ice-cream-cone-illustration-vector-minimal-icon-flat-colored-outline_703156_wh860.png',
                    height: 120),
                SizedBox(height: 32),
                Text('Email'),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value!.contains("@")) {
                      return null;
                    } else {
                      return "Você precisa digitar um e-mail válido!";
                    }
                  },

                  //  ),

                  decoration: InputDecoration(
                    label: Text("E-mail"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Color(0xfffdfdfd),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                Text('Senha'),
                TextFormField(
                  obscureText: true,
                  controller: senhaController,
                  validator: (value) {
                    if (value!.length >= 6) {
                      return null;
                    } else {
                      return "Você precisa digitar uma senha válida!";
                    }
                  },
                  decoration: InputDecoration(
                    label: Text("Senha"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Color(0xfffdfdfd),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // Verificar e-mail e senha
                      String email = emailController.text;
                      String senha = senhaController.text;

                      if (email == 'usuario@gmail.com' && senha == '123456') {
                        // Navegar p/ HomePage
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Ice_Cream();
                            },
                          ),
                        );
                      } else {
                        print('Usuário e/ou Senha incorreto(s)!');
                      }
                    }
                  },
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfffdfdfd),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
