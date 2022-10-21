import "package:flutter/material.dart";
import 'package:login/UI/General/edit_profile_screen.dart';

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          // Debe ir la foto de perfil, el nombre del usuario y el botón de editar perfil
          Row(
            children: [
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Icon(
                      Icons.account_circle,
                      size: 100,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text("Username",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Number: ",
                            style: TextStyle(
                              fontSize: 15,
                            ))),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Location: ",
                            style: TextStyle(
                              fontSize: 15,
                            ))),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Email: ",
                            style: TextStyle(
                              fontSize: 15,
                            )))
                  ],
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: MaterialButton(
                minWidth: double.infinity,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfileScreen()));
                },
                color: const Color(0xFF0332FC),
                child: const Text("Edit Profile",
                    style: TextStyle(color: Colors.white))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: MaterialButton(
                minWidth: double.infinity,
                onPressed: () {},
                color: const Color(0xFF0332FC),
                child: const Text("Logout",
                    style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
    )));
  }
}
