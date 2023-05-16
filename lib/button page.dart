import 'package:flutter/material.dart';
class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
appBar: AppBar(
  title:  Container(
    child: Text("flutter button page"
    ),
  ),
  ),
    body:Column(
      children: [
        Container(

            width: width,
            child: Text("flutter button", textAlign: TextAlign.center,
              textScaleFactor: 4.0,style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w300,
                    fontSize: 20.0,
                    fontFamily: "Caveat",

                ))),
        // TextButton(
        //     onPressed: (){}, child:Text("login")),
        //   OutlinedButton(
        //     onPressed: (){}, child:Text("sign up"),
        //   ),
        // ElevatedButton(
        //     onPressed:(){}, child:Text("exit")),
        // IconButton(onPressed: () {
        //
        // }, icon:Icon(Icons.add))


      ],
    ) ,
);
  }
}
