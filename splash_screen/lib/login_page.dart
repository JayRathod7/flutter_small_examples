import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController _mobile = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _name = TextEditingController();

  // String value = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}";
  // RegExp regExp = RegExp(value);
  late SharedPreferences sharedPreferences;
  late bool newuser;

  @override
  void initState() {
    super.initState();
    checkData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 150),
                Image.asset("assets/honda_logo.png", height: 50, width: 50),
                const Text(
                  "HONDA",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 54,
                      color: Colors.black87),
                ),
                const Text(
                  "Collection of Bikes & Cars",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 2,
                      wordSpacing: 8,
                      color: Colors.grey),
                ),
                const SizedBox(height: 100),
                TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(
                      hintText: "Enter Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(26)))),
                  validator: (name) {
                    if (name!.isEmpty) {
                      return "Please Enter name";
                    }
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _mobile,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      hintText: "Mobile No.",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(26)))),
                  validator: (number) {
                    if (number!.isEmpty) {
                      return "Please Enter Number";
                    }
                    if (number.length < 10 || number.length > 10) {
                      return "Enter Valida Number";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _password,
                  decoration: const InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(26)))),
                  validator: (pass) {
                    if (pass!.isEmpty) {
                      return "Please Enter Password";
                    }
                    if (pass.length < 8) {
                      return "Your password must be at least 8 characters";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      String password = _password.text.toString();
                      String number = _mobile.text.toString();
                      String name = _name.text.toString();
                      // SnackBar snackbar = const SnackBar(
                      //     content:
                      //         Text("1 UpperCase\n1 Latter\n1 Symbol Required"));

                      if (_formkey.currentState!.validate()) {
                        sharedPreferences.setString("L_name", name);
                        sharedPreferences.setString("L_number", number);
                        sharedPreferences.setString("L_pass", password);
                        sharedPreferences.setBool("check_login", false);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      }
                    },
                    child: const Text("Click"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  checkData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    newuser = sharedPreferences.getBool('check_login') ?? true;

    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }
}
