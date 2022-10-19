import "package:flutter/material.dart";

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _validatorKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scaffoldMessengerKey: _validatorKey,
        //Desativar o banner de debug
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Sign Up",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Form(
                        key: _formKey,
                        child: Column(children: [
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              labelText: "Name",
                              hintText: "Your name",
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty
                                  ? "Please enter name"
                                  : null;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              labelText: "Last Name",
                              hintText: "Your last name",
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty
                                  ? "Please enter last name"
                                  : null;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: "Mobile Number",
                              hintText: "Your mobile number",
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty
                                  ? "Please enter mobile number"
                                  : null;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: "ID Card",
                              hintText: "Your ID card",
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty
                                  ? "Please enter ID card"
                                  : null;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: "Email",
                              hintText: "Your email",
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty
                                  ? "Please enter email"
                                  : null;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: const InputDecoration(
                              labelText: "Password",
                              hintText: "Your password",
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            validator: (value) {
                              return value!.isEmpty
                                  ? "Please enter password"
                                  : null;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          //Button de Sign Up
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 45),
                            child: MaterialButton(
                                minWidth: double.infinity,
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _validatorKey.currentState!.showSnackBar(
                                      const SnackBar(
                                        content: Text("Sign Up successful"),
                                      ),
                                    );
                                  }
                                },
                                color: const Color(0xFF0332FC),
                                child: const Text("SIGN UP",
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ]),
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}
