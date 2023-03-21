import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       home: Scaffold(
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

   @override
  void dispose(){
     super.dispose();
     eController.dispose();
     hController.dispose();
     cController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      child: Form(
        key: formKey,
         child: Padding(
           padding: const EdgeInsets.all(25),
           child: Column(
           children: [
             TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    hintText: 'email'),
               controller: eController,
            ),
             TextFormField(
               decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(
                       Radius.circular(20.0),
                     ),
                   ),
                   hintText: 'haslo'),
               controller: hController,
             ),
             TextFormField(
               decoration: InputDecoration(

                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(
                       Radius.circular(20.0),
                     ),
                   ),
                   hintText: 'cos'),
               controller: cController,
               onChanged: (value){
                 print(value);
               },
             ),
           ElevatedButton(
               onPressed: (){},
               child: Text('Submit'))
           ],
          ),
         ),
      ),
    );
  }
}


