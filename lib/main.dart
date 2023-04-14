import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  var mobileText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Input"),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  // enabled: false,
                  // keyboardType: const TextInputType.numberWithOptions(),
                  controller: emailText,
                  decoration: InputDecoration(
                      hintText: "Enter Email",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: const BorderSide(
                            color: Colors.deepOrange, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: const BorderSide(
                            color: Colors.blueAccent, width: 2),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: const BorderSide(
                            color: Colors.deepOrange, width: 2),
                      ),
                      // suffixText: "Username Exists",
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.deepOrange,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.deepOrange,
                      )),
                ),
                const SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: passText,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    hintText: "Enter Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide:
                          const BorderSide(color: Colors.deepOrange, width: 2),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: mobileText,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    hintText: "Enter Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide:
                          const BorderSide(color: Colors.deepOrange, width: 2),
                    ),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'[0-9]'),
                    ),
                  ],
                  maxLength: 10,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 11,
                ),
                ElevatedButton(
                  onPressed: () {
                    String uEmail = emailText.text.toString();
                    String uPass = passText.text;
                    String uMobile = mobileText.text.toString();
                    print(
                        "Email: $uEmail, Password : $uPass , Mobile Number : $mobileText.GG");
                  },
                  child: const Text("Login"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
