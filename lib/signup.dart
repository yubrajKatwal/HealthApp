import 'package:flutter/material.dart';
import 'package:healthapp1/Dashboard.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  // var userName;
  //
  // SignUpPage(String userName, ){
  //   this.userName = userName;
  // }

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var changeObscureText = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sign up'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                prefixIcon:
                    Image.asset('assets/user.png', width: 20, height: 20),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2.0, color: Colors.blue),
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
              height: 5,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Colors.blue,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2.0, color: Colors.blue),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24.0),
                  borderSide: const BorderSide(width: 2,color: Colors.blue),
                ),
                hintText: '  Email',
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.phone_outlined,
                  color: Colors.blue,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2.0, color: Colors.blue),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24.0),
                  borderSide: const BorderSide(width: 2,color: Colors.blue),
                ),
                hintText: '  Phone no.',
              ),
              // validator: (value){
              //   if(value==null || value.isEmpty){
              //     return 'Please Enter a number';
              //   } return null;
              // },
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: passwordController,
              obscureText: changeObscureText,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Colors.blue,
                ),
                labelText: 'Set Password',
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeObscureText = !changeObscureText;
                      });
                    },
                    child: const Icon(
                      Icons.visibility_outlined,
                      color: Colors.blue,
                    )),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2.0, color: Colors.blue),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24.0),
                  borderSide: const BorderSide(width: 2,color: Colors.blue),
                ),
              ),
              // validator: (value){
              //   if(value==null || value.isEmpty){
              //     return 'Please Enter a password';
              //   } return null;
              // },
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: passwordsController,
              obscureText: changeObscureText,
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Colors.blue,
                  ),
                  labelText: 'Confirm Password',
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          changeObscureText = !changeObscureText;
                        });
                      },
                      child: const Icon(
                        Icons.visibility_outlined,
                        color: Colors.blue,
                      )),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.0),
              borderSide: const BorderSide(width: 2,color: Colors.blue),
            ),),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    // return DashBoard(usernameController.text);
                    return const DashBoard();
                  }));
                },
                child: const Text(
                  'Sign up',
                  textAlign: TextAlign.right,
                )),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Already have an account?'),
            ),
          ],
        ),
      ),
    );
  }
}
