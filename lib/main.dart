import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var emailController = TextEditingController();
  var pwController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom],
    );
    return Scaffold(
      //appBar: AppBar(
      // title: const Center(child: Text("abc")),
      //),
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.all(40),
        children: [
          Image.asset("assets/images/clogo1.png"),
          const SizedBox(
            height: 130,
          ),
          const Text(
            "Welcome back",
            style: TextStyle(
                fontSize: 22, color: Colors.pink, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                prefix: Icon(
                  Icons.mail,
                  color: Colors.grey,
                ),
                hintText: ("Email/Phone Number"),
              )),
          TextFormField(
              controller: pwController,
              decoration: const InputDecoration(
                prefix: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                hintText: ("Password"),
              )),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (v) {},
              ),
              const Text(
                "Remember me",
                style: TextStyle(color: Colors.pink),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.pink),
                  ))
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
          const SizedBox(
            height: 20,
          ),
          const Align(child: Text("Or Login with")),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/images/FBlogo.png",
                height: 50,
              ),
              Image.asset(
                "assets/images/ig.jpg",
                height: 50,
              ),
              Image.asset(
                "assets/images/lkd1.png",
                height: 50,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have account?"),
              Text(
                "  Sign up",
                style: TextStyle(color: Colors.pink),
              ),
            ],
          )
        ],
      )),
    );
  }
}
