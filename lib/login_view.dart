import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oninyon_challenge/main_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.network("https://oninyon.com/images/bob/logo.png",
                      width: 200, height: 200),
                ),
                SizedBox(height: 40),
                Text("Email",
                    style: TextStyle(
                      fontSize: 14,
                    )),
                SizedBox(height: 10),
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Masukan alamat email',
                  ),
                ),
                SizedBox(height: 25),
                Text("Password",
                    style: TextStyle(
                      fontSize: 14,
                    )),
                SizedBox(height: 10),
                TextField(
                  controller: passwordController,
                  // obscureText: model.obsecureText,
                  obscuringCharacter: "*",
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Masukan kata sandi',
                  ),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 31, 160, 201),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 31, 160, 201),
                          ))),
                  onPressed: () {
                    // if(emailController.text == "test@oninyon.com" || passwordController.text == "T3stOninyon"){
                    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("berhasil Login")));
                    //   Navigator.of(context).pushReplacement(
                    //     MaterialPageRoute(
                    //       builder: (context) =>
                    //       const MainView(),
                    //     ),
                    //   );
                    // }
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) =>
                        const MainView(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("Log in",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
