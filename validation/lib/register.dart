import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                  const SizedBox(),
                  TextField(
                      controller: userNameController,
                      decoration: const InputDecoration(
                          hintText: "User name", border: OutlineInputBorder())),
                  const SizedBox(height: 10),
                  TextField(
                      controller: mobileNumberController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: "Mobile Numebr",
                          border: OutlineInputBorder())),
                  const SizedBox(height: 10),
                  TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          hintText: "Email Id", border: OutlineInputBorder())),
                  const SizedBox(height: 10),
                  TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                          hintText: "Password", border: OutlineInputBorder())),
                  const SizedBox(height: 10),
                  TextField(
                      controller: confirmPassController,
                      decoration: const InputDecoration(
                          hintText: "Confirm Password",
                          border: OutlineInputBorder())),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      checkValidation();
                    },
                    child: const Text("Register"),
                  ),
                  SizedBox(height: 10),
                  // a minimum of 1 lower case letter [a-z] and
                  // a minimum of 1 upper case letter [A-Z] and
                  // a minimum of 1 numeric character [0-9] and
                  // a minimum of 1 special character: ~`!@#$%^&*()-_+={}[]|\;:"<>,./?
                  Row(
                    children: [
                      Icon(Icons.circle),
                      Text("minimum of 1 lower case letter [a-z]")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle),
                      Text("minimum of 1 upper case letter [A-Z]")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle),
                      Text("Minimum of 1 numeric character [0-9]")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle),
                      Text("Minimum of 1 special character")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle),
                      Text("Password Length Should be 8")
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }

  checkValidation() {
    String name = userNameController.text.toString();
    String number = mobileNumberController.text.toString();
    String email = emailController.text.toString();
    String pass = passwordController.text.toString();
    String cPass = confirmPassController.text.toString();
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

    if (name.isNotEmpty &&
        number.isNotEmpty &&
        email.isNotEmpty &&
        pass.isNotEmpty &&
        cPass.isNotEmpty) {
      if (!(number.length <= 10 && number.length >= 10)) {
        showSnackBar("Mobile Number Not Valid");
      } else if (!(pass.contains(regex))) {
        showSnackBar(
            "One uppercase,lowercase,symbol,latter, && Password length should be 8");
      } else if (pass != cPass) {
        showSnackBar("Password Are Not Match");
      } else {
        showSnackBar("Create Your New Account");
      }
    } else {
      showSnackBar("All Fields Are Mandatory");
    }
  }

  showSnackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}
