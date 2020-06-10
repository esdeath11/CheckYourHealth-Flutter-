import 'package:provider/provider.dart';
import 'package:finalexam/AppHome.dart';
import 'package:finalexam/Screen/Service/Auth.dart';
import 'package:finalexam/Helper/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:finalexam/Model/users.dart';





class Login extends StatefulWidget{

  final Function toggleView;


  Login({this.toggleView});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login ();
  }

}

class _Login extends State<Login>{

  final AuthService _auth = AuthService();
  String email = '';
  String password = '';
  String error = '';
  final _textKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body: ListView(
          children: <Widget>[
            Container(
              height: 800,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      left: -105,
                      bottom: 365,
                      width: 700,
                      height: 500,
                      child: Container(

                        child: ImagePath("Assets/img2.png"),
                      )),
                  Positioned(
                      width: 275,
                      height: 300,
                      left: 30,
                      top: 100,
                      child: ImagePath("Assets/img4.png")),
                  Positioned(
                      width: 235,
                      height: 50,
                      top: 300,
                      left: 58,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(195, 222, 252, 1),
                            borderRadius: BorderRadius.circular(45)
                        ),
                      )
                  ),
                  Positioned(
                      width: 235,
                      height: 50,
                      top: 360,
                      left: 58,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(195, 222, 252, 1),
                            borderRadius: BorderRadius.circular(45)
                        ),
                      )
                  ),
                  Positioned(
                      width: 300,
                      height: 50,
                      top: 330,
                      left: 30,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(-1.0, -1.0),
                                  blurRadius: 2.0,
                                  spreadRadius: 1.0
                              ),
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 2.0,
                                  spreadRadius: 1.0
                              )
                            ],
                            color: Color.fromRGBO(195, 222, 252, 1),
                            borderRadius: BorderRadius.circular(45)
                        ),
                        child: Text("Stay Safe, Stay Healthy", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                      )
                  ),
                  Positioned(
                      top: 410,
                      left: 53,
                      child: Text("APLIKASI KESEHATAN",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                  ),
                  Positioned(
                    top: 460,
                    left: 20,
                    child: Text("Email",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  Positioned(
                      top: 550,
                      left: 20,
                      child: Text("Password", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)),

                  Positioned(
                      child: Container(
                        width: 340,
                        padding: EdgeInsets.only(top: 460, left: 20),
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
                              SizedBox(height: 30.0),
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
                      )
                  ),

                  Positioned(
                      width: 95,
                      height: 38,
                      left: 220,
                      top: 650,
                      child: RaisedButton(
                        onPressed: () async{
                          if(_textKey.currentState.validate()){
                            dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                            if(result == null){
                              setState(()=> error = 'PLS dont use Brute Force');
                            }
                          };
                        },
                        color: Color.fromRGBO(227, 113, 119, 1) ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45)
                        ),
                        child: Text("LOGIN",style: TextStyle(color: Colors.white),),
                      )),
                  Positioned(
                      top: 650,
                      left: 20,
                      child: Text(error, style: TextStyle(color: Colors.red),)),
                  Positioned(
                      top: 750,
                      left: 33,
                      child: Row(
                        children: <Widget>[
                          Text("Don't Have Account?"),
                          InkWell(
                            child: Text(" Sign Up", style: TextStyle(color: Colors.red),),
                            onTap: (){
                              widget.toggleView();
                            },

                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        )
    );
  }
}

