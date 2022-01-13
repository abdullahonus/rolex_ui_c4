import 'package:flutter/material.dart';
import 'package:rolex_ui_c4/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1A2720),
        body: Stack(
          children: [
            const Positioned(
                left: 50,
                top: 30,
                child: Text(
                  "Explore top \n brand watches",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "serif",
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )),
            Positioned(
                left: 85,
                top: 130,
                child: Text(
                  "Choose from 50+ luxry brands",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "serif",
                      fontSize: 15,
                      color: Colors.white.withOpacity(0.1),
                      fontWeight: FontWeight.w400),
                )),
            Positioned(
                left: 10,
                right: 10,
                top: 160,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/logo.png"),
                  )),
                )),
            Positioned(
                left: 10,
                right: 10,
                top: 200,
                child: Container(
                  width: 400,
                  height: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/a.jpg"),
                  )),
                )),
            Positioned(
                bottom: 100,
                right: 40,
                left: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
                  },
                  child: const Text("GET STARTED",
                      style: TextStyle(
                          fontFamily: "serif",
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(52, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      primary: const Color(0xff7DAC97)),
                )),
            const Positioned(
                left: 65,
                bottom: 15,
                child: Text(
                  "Already have an account?",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )),
            Positioned(
                right: 53,
                bottom: 0,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Login Now",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff7DAC97),
                          fontWeight: FontWeight.w400),
                    ))),
          ],
        ),
      ),
    );
  }
}
