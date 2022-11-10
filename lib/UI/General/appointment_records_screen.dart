import "package:flutter/material.dart";

class AppointmentRecordScreen extends StatefulWidget {
  const AppointmentRecordScreen({super.key});

  @override
  State<AppointmentRecordScreen> createState() =>
      _AppointmentRecordScreenState();
}

class _AppointmentRecordScreenState extends State<AppointmentRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            Card(
                //El card debe tener una foto en la parte superior, el nombre del usuario, la fecha de solicitud y el botón mas información
                child: Column(
              children: <Widget>[
                const ListTile(
                  leading:
                      Icon(Icons.account_circle, size: 70, color: Colors.black),
                  title: Text('Nombre del usuario'),
                  subtitle: Text('Fecha de solicitud'),
                ),
                Padding(
                  //Solo agregar padding arriba.
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Row(
                    children: const <Widget>[
                      Text("I need to repair my refrigeratos"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30),
                  child: Row(
                    children: const <Widget>[
                      Text("Payed: S/. 50"),
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      )),
    );
  }
}
