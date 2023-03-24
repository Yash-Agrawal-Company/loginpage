import 'package:flutter/material.dart';
import 'package:loginpage/utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  String name = "";
  final _formKey = GlobalKey<FormState>();

  goToHome(BuildContext context) async {
    if (_formKey.currentState?.validate() == true) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomePage);
      setState(() {
        changeButton = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Login Page"),
            SizedBox(
              width: 7.0,
            ),
            Icon(Icons.lock)
          ],
        ),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(1.0),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Image(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                const Image(
                  image: AssetImage("assets/logo2.jpg"),
                  width: 90.0,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Theme(
                    data: ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: const InputDecorationTheme(
                          labelStyle: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 20.0,
                      )),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFormField(
                            style: const TextStyle(fontFamily: "sans-serif"),
                            decoration: const InputDecoration(
                              labelText: "Full name ",
                              hintText: "Enter your full name ",
                            ),
                            keyboardType: TextInputType.text,
                            onChanged: (value) {
                              setState(() {
                                name = value;
                              });
                            },
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return "User name cannot be empty";
                              }

                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            style: const TextStyle(fontFamily: "sans-serif"),
                            decoration: const InputDecoration(
                              labelText: "Email-id",
                              hintText: "Enter a valid email address",
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return "Email id cannot be empty";
                              } else if (value?.endsWith('@gmail.com') ==
                                  false) {
                                return "email should contain @gmail.com";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            style: const TextStyle(fontFamily: "sans-serif"),
                            decoration: const InputDecoration(
                              labelText: "Password",
                              hintText: "Enter your password",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return "password cannot be empty";
                              } else if (value?.length != 8) {
                                return "password should contain 8 characters";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          InkWell(
                            onTap: () => goToHome(context),
                            child: AnimatedContainer(
                              height: 50.0,
                              width: changeButton ? 50 : 100.0,
                              alignment: Alignment.center,
                              duration: const Duration(seconds: 1),
                              decoration: BoxDecoration(
                                color: changeButton
                                    ? Colors.green
                                    : Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(
                                    changeButton ? 20 : 8),
                              ),
                              child: changeButton
                                  ? const Icon(Icons.done_outline_rounded)
                                  : const Text("Login",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
