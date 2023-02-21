import 'package:flutter/material.dart';
import 'package:google_drive/screens/auth/controller/auth_controller.dart';

import '../../../utils/text_styling.dart';

import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.deepPurpleAccent,
              Colors.purpleAccent,
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width / 1.7,
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white,
                      Colors.blueGrey,
                    ]),
                borderRadius: BorderRadius.circular(56),
              ),
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Image.asset(
                  'assets/images/folder.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 30, left: 16, right: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(children: [
                Text(
                  'Organize Your Files',
                  style: headlineTextStyle(24, Colors.black, FontWeight.w700),
                ),
                Text(
                  "In A Better Way",
                  style: headlineTextStyle(24, Colors.black, FontWeight.w700),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () => authController.login(),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: Colors.orangeAccent,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Let's Go",
                      style:
                          headlineTextStyle(20, Colors.white, FontWeight.bold),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
