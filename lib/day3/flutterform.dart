 import 'package:flutter/material.dart';
 class FlutterForm extends StatefulWidget {
   const FlutterForm({Key? key}) : super(key: key);

   @override
   State<FlutterForm> createState() => _FlutterFormState();
 }

 class _FlutterFormState extends State<FlutterForm> {
   final _formkey=GlobalKey<FormState>();
   var emailController=TextEditingController();
   var PasswordController=TextEditingController();
   var LoginController=TextEditingController();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("zomato"),
       ),
       body: Form(
         key: _formkey,

         child: Column(
             children: [


               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextFormField(
                   decoration: InputDecoration(
                     label: Text("email"),
                     border: OutlineInputBorder()
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextFormField(
                   obscureText: _showpassword,
                   decoration: InputDecoration(
                       label: Text("password"),
                       border: OutlineInputBorder()
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: SizedBox(
                   width: MediaQuery.of(context).size.width,
                   height: 50,
                   child: ElevatedButton(onPressed: () {}, child: Text("Login")),

                 ),
               )
             ],

           ),

       ),
     );
  }
 }
