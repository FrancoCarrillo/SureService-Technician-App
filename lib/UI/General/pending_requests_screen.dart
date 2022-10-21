import "package:flutter/material.dart";

class PendingRequestScreen extends StatefulWidget {
  const PendingRequestScreen({super.key});

  @override
  State<PendingRequestScreen> createState() => _PendingRequestScreenState();
}

class _PendingRequestScreenState extends State<PendingRequestScreen> {
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      TextButton(
                          onPressed: () {}, child: const Text("MORE INFO"))
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
