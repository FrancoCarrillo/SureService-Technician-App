import "package:flutter/material.dart";
import 'package:email_validator/email_validator.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _validatorKey = GlobalKey<ScaffoldMessengerState>();
  final List<String> districts = [
    "Ancón",
    "Ate",
    "Barranco",
    "Breña",
    "Carabayllo",
    "Cercado de Lima",
    "Chaclacayo",
    "Chorrillos",
    "Cieneguilla",
    "Comas"
        "El agustino",
    "Independencia",
    "Jesús maría",
    "La molina",
    "La victoria",
    "Lince",
    "Los olivos",
    "Lurigancho",
    "Lurín",
    "Magdalena del mar",
    "Miraflores",
    "Pachacamac",
    "Pucusana",
    "Pueblo libre",
    "Puente piedra",
    "Punta hermosa",
    "Punta negra",
    "Rímac",
    "San bartolo",
    "San borja",
    "San isidro",
    "San juan de lurigancho",
    "San juan de miraflores",
    "San luis",
    "San martin de porres",
    "San miguel",
    "Santa anita",
    "Santa maría del mar",
    "Santa rosa",
    "Santiago de surco",
    "Surquillo",
    "Villa el salvador",
    "Villa maría del triunfo"
  ];
  String? selectedValue;
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
                              if (value!.isEmpty) {
                                return "You must enter a mobile number";
                              } else if (value.length < 9) {
                                return "Please enter a correct mobile number";
                              } else {
                                return null;
                              }
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
                              if (value!.isEmpty) {
                                return "You must enter a ID Card";
                              } else if (value.length < 8) {
                                return "Please enter a correct ID Card";
                              } else {
                                return null;
                              }
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
                              final bool isValid =
                                  EmailValidator.validate(value!);
                              if (isValid) {
                                return null;
                              } else {
                                return "You must enter a correct email";
                              }
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
                              if (value!.length < 3) {
                                return "You must enter a password with 3 characters as minimun";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              labelText: "Profile description",
                              hintText: "Your profile description",
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String value) {},
                            minLines: 2,
                            maxLines: 5,
                            validator: (value) {
                              if (value!.length < 10) {
                                return "You must enter a description with 10 characters as minimun";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 45),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                isExpanded: true,
                                hint: Row(
                                  children: const [
                                    Icon(
                                      Icons.list,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Select Item',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                items: districts
                                    .map((item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ))
                                    .toList(),
                                value: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value as String;
                                  });
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                ),
                                iconSize: 14,
                                iconEnabledColor: Colors.white,
                                iconDisabledColor: Colors.grey,
                                buttonPadding:
                                    const EdgeInsets.only(left: 14, right: 14),
                                buttonDecoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black26,
                                  ),
                                  color: Colors.white,
                                ),
                                buttonElevation: 2,
                                itemHeight: 40,
                                itemPadding:
                                    const EdgeInsets.only(left: 14, right: 14),
                                dropdownMaxHeight: 200,
                                dropdownWidth: 200,
                                dropdownPadding: null,
                                dropdownDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.white,
                                ),
                                dropdownElevation: 8,
                                scrollbarThickness: 6,
                                scrollbarAlwaysShow: true,
                                offset: const Offset(-20, 0),
                              ),
                            ),
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
