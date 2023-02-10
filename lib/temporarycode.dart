import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import './welcome_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      height: size.height,
      width: size.width,
      child: Column(children: [
        Container(
          height: 250,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  colorFilter:
                      ColorFilter.mode(Colors.blue, BlendMode.hardLight),
                  fit: BoxFit.fill)),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const WelcomePage(),
                      )),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    // child: IconButton(
                    //   onPressed: () {
                    //     print("You have clicked Back button");
                    //   },),
                    // icon:
                    child: const Icon(Icons.arrow_back_ios_new_rounded,
                        color: Colors.blue),
                  ),
                ),
              ),
              Positioned(
                  left: 30,
                  width: 80,
                  height: 150,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/light-1.png'))),
                  )),
              Positioned(
                  left: 140,
                  width: 80,
                  height: 120,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/light-2.png'))),
                  )),
              Positioned(
                  right: 40,
                  top: 10,
                  width: 80,
                  height: 60,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/clock.png'))),
                  )),
              Positioned(
                  top: 120,
                  left: 20,
                  child: Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Center(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text("Welcome !",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
        Container(
            height: size.height - 300,
            width: size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
            child: Column(
              children: [
                const SizedBox(height: 60),
                const CustomInputBox(
                  hintText: "Username/Email",
                  prefixIcon: Icon(Icons.email),
                ),
                const SizedBox(height: 20),
                const CustomInputBox(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off)),
                const SizedBox(height: 5),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text("Forgot Password?",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                          ))),
                ]),
                const SizedBox(height: 50),
                ConstrainedBox(
                  constraints:
                      BoxConstraints.tightFor(width: size.width, height: 50),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                      onPressed: () {},
                      child: const Text("Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ))),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("Don't have an account?",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Sign Up.",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          )))
                ])
              ],
            )),
        Container(width: size.width)
      ]),
    ));
  }
}

class CustomInputBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final hintText;
  // ignore: prefer_typing_uninitialized_variables
  final prefixIcon;
  // ignore: prefer_typing_uninitialized_variables
  final suffixIcon;
  const CustomInputBox({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          // ignore: duplicate_ignore
          decoration: InputDecoration(
              // ignore: unnecessary_line
              prefixIcon: this.prefixIcon,
              // ignore: unnecessary_that
              suffixIcon: this.suffixIcon,
              fillColor: Colors.black12,
              filled: true,
              hintText: this.hintText,
              hintStyle: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                color: Colors.blue[400],
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ))),
    );
  }
}
