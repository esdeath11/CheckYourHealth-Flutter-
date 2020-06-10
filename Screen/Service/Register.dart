import 'package:finalexam/Controller/Auth.dart';
import 'package:finalexam/Helper/iconPath.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Register extends StatefulWidget {

  final Function toggleView;


  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  String email = '';
  String password = '';
  final _textKey = GlobalKey<FormState>();
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: 370,
        child:Stack(
          children: <Widget>[

            Positioned(
                top: 70,
                left: 120,
                width: 100,
                height: 100,
                child: IconPath("Assets/img4.png")
            ),

            Positioned(
                left: 30,
                top: 200,
                child: Text("Email")),
            Positioned(
                top: 320,
                left: 30,
                child: Text("Password")),

            Positioned(
                child: Container(
                  padding: EdgeInsets.only(top: 200),
              child: Form(
                key: _textKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    TextFormField(
                      validator: (val) => val.isEmpty ? 'enter an email':null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(45)
                        )
                      )
                    ),
                    SizedBox(height: 60.0),
                    TextFormField(
                      validator: (val) => val.length < 6 ? 'enter a password + 6 chars long':null,
                      obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45)
                            )
                        ),
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                    ),
                  ],
                ),
              ),
            )),

//            Positioned(
//                left: 30,
//                top: 220,
//                width: 302,
//                height: 36,
//                child: TextField(
//                    onChanged: (val){
//                      setState(() => email = val);
//                    },
//                    decoration: InputDecoration(
//                      border: OutlineInputBorder(
//                          borderRadius: BorderRadius.circular(45)
//                      ),
//                    )
//                )),
//            Positioned(
//                left: 30,
//                top: 300,
//                width: 302,
//                height: 36,
//                child: TextField(
//                    obscureText: true,
//                    onChanged: (val){
//                      setState(() => password = val);
//                    },
//                    decoration: InputDecoration(
//                      border: OutlineInputBorder(
//                          borderRadius: BorderRadius.circular(45)
//                      ),
//                    )
//                )),


            Positioned(
                top: 460,
                width: 100,
                left: 125,
                height: 38,
                child: RaisedButton(
                  onPressed: (){
                    if(_textKey.currentState.validate()){
                      print(email);
                      print(email);
                      dynamic result = _auth.registerWithEmailPassword(email,password);
                      if(result == null){
                        setState(()=> error = 'use a valid email or password please');
                      }

                    }
                  },
                  color: Color.fromRGBO(19, 186, 27, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: Text("Sign Up", style: TextStyle(color: Colors.white),),

                )
            ),
            Positioned(
                top: 520,
                left: 93,
                child: Row(
                  children: <Widget>[
                    Text("You Have Account?"),
                    InkWell(
                      child: Text(" Sign In", style: TextStyle(color: Colors.green),),
                      onTap: (){
                        widget.toggleView();
                      },

                    )
                  ],
                ))
          ],
        )
      )
    );
  }
}
