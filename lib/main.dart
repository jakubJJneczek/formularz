import 'dart:ffi';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
           child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('123'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
        ) ,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_page_sharp), label: "null"),
            BottomNavigationBarItem(
                icon: Icon(Icons.safety_check_sharp), label: "1")
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        appBar: AppBar(
          centerTitle: true,

          title: Text("1"),
        ),
        body: Formularz(),
      ),
    );
  }
}

class Formularz extends StatefulWidget {
  const Formularz({Key? key}) : super(key: key);

  @override
  State<Formularz> createState() => _FormularzState();
}

class _FormularzState extends State<Formularz> {
  final formKey = GlobalKey<FormState>();
  final eController = TextEditingController();
  final hController = TextEditingController();
  final cController = TextEditingController();

  int valueToDisplayEmail = 0;
  int valueToDisplayHaslo = 0;
  int sumToDisplay = 0;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',fit: BoxFit.fill,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    hintText: 'email'),
                controller: eController,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    hintText: 'haslo'),
                controller: hController,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  hintText: 'cos'),
              controller: cController,
              onChanged: (value) {
                print(value);
              },
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    print(eController.text);
                    print(hController.text);
                    valueToDisplayEmail = int.parse(eController.text);
                    valueToDisplayHaslo = int.parse(hController.text);
                    int sum = valueToDisplayEmail * valueToDisplayHaslo;
                    print(sum);
                    sumToDisplay = sum;
                  });
                },
                child: const Text('Submit')),
              Text(sumToDisplay.toString())
          ],
        ),
      ],
    );
  }
}
