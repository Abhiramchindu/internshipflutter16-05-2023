import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _showpassword=true;
  bool _showcpassword=true;
  final _regkey=GlobalKey<FormState>();
  var Firstname=" ",lastname=" ",email=" ",password=" ",confirmpassword=" ";

  var FirstController=TextEditingController();
  var SecondController=TextEditingController();
  var emailController=TextEditingController();
  var PasswordController=TextEditingController();
  var confirmpasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTRATION"),
      ),
      body: Form(
        key: _regkey,
        child: Column(
          children: [

            Padding(
              padding:const EdgeInsets.all(9.0),
              child: TextFormField(
                controller: FirstController,
                validator: (value) {
                  if(Firstname=='')
                  {
                    return "enter your firstname";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    label:Text("First Name"),
                    border:OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(9.0),
              child: TextFormField(
                controller: SecondController,
                validator: (value) {
                  if(lastname==''){
                    return "enter your lastname";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    label:Text("Last Name"),
                    border:OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(9.0),
              child: TextFormField(
                controller: emailController,
                validator: (value) {
                  if(email==''){
                    return "enter your email id.";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    label:Text("email"),
                    border:OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(9.0),
              child: TextFormField(
                controller: PasswordController,validator: (value) {
                if(password==''){
                  return "enter the password";
                }
                return null;
              },

                obscureText: _showpassword,
                decoration: InputDecoration(
                  suffix: InkWell(
                    onTap: () {
                      showpassword();
                    },
                    child: _showpassword? Icon(Icons.visibility):Icon(Icons.visibility_off),

                  ),
                    label:Text("Password"),
                    border:OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(9.0),
              child: TextFormField(
                controller: confirmpasswordController,
                validator: (value) {
                  if(confirmpassword==''){
                    return "reenter your password";
                  }
                  return null;
                },
                obscureText: _showcpassword,
                decoration: InputDecoration(
                    suffix: InkWell(
                      onTap: () {
                        showpassword();
                      },
                      child: _showcpassword? Icon(Icons.visibility):Icon(Icons.visibility_off),

                    ),
                    label:Text("Confirm Password"),
                    border:OutlineInputBorder()
                ),
              ),
            ),
      Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
              width:MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: () {
               setState((){
               email=emailController.text;
               Firstname=FirstController.text;
               lastname=SecondController.text;
               password=PasswordController.text;
               confirmpassword=confirmpasswordController.text;
                 if(_regkey .currentState!.validate())
                 {
                   ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text("sucess"))
                   );
                 }
               });

              }, child: Text("CONFIRM"))),
      ) ],

    ),
      ),
    );
  }
  void showpassword(){
    setState(() {
      _showpassword=!_showpassword;
    });
  }
  void showcpassword(){
    setState(() {
      _showcpassword=!_showcpassword;
    });
  }

}
