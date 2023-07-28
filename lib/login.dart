import 'package:flutter/material.dart';
import 'package:healthapp1/Dashboard.dart';
import 'package:healthapp1/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var changeObscureText = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Column(
            children: [
              //1st item of column
              Center(child: Image.asset('assets/logo.png', scale: 1)),
              //Giving space between logo and text
              const SizedBox(
                height: 30,
              ),
              //Space

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon:
                      Image.asset('assets/user.png', width: 20, height: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    borderSide: const BorderSide(width: 2,color: Colors.blue),
                  ),
                  hintText: '  Username',
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              TextField(
                controller: passwordController,
                obscureText: changeObscureText,
                decoration: InputDecoration(
                  prefixIcon:
                      Image.asset('assets/lock.png', width: 20, height: 20),
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          changeObscureText = !changeObscureText;
                        });
                      },
                      child: Image.asset('assets/view.png')),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(24.0),
                   borderSide: const BorderSide(width: 2,color: Colors.blue),
                  ),
                  hintText: '  Password',
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(' Forgot Password?'),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    if (emailController.text == '1' &&
                        passwordController.text == '1') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        // return DashBoard(emailController.text);
                        return const DashBoard();
                      }));
                    } else {
                      final snackBar = SnackBar(
                          content:
                              const Text('Your password or email is incorrect'),
                          action: SnackBarAction(
                            label: 'undo',
                            onPressed: () {},
                          ));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: const Text('log in')),

              TextButton(
                  onPressed: () {
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignUpPage();
                      }));

                      // print(emailController);
                      // print(passwordController);
                    }
                  },
                  child: const Text("Don't have account?create one")),
            ],
          ),
        ),
      ),
    );
  }
}
