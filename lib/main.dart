import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      )

    );
  }
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSignUp = true;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body:new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(image: new AssetImage("assets/farmers_base.jpg"),
          fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),

          Positioned(
            top: 200,
              child: Container(

            height: 380,
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width-40,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  spreadRadius: 5
                )
              ]
            ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isSignUp = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text("LOGIN",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: isSignUp? Colors.white10 : Colors.white
                              ),
                              ),
                              if(!isSignUp)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,

                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isSignUp = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text("SIGNUP",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: isSignUp ? Colors.white : Colors.white10
                                ),
                              ),
                              if(isSignUp)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,

                              )
                            ],
                          ),
                        )

                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          buildTextField(Icons.email_outlined,"Email-ID",false,true),
                          buildTextField(Icons.lock_outline,"Password",true,false),
                          buildTextField(Icons.lock_outline,"Confirm Password",true,false)
                        ],
                      ),
                    ),
                  ],
                ),
          )

          ),
          //buildBottomHalfContainer(true),


          buildBottomHalfContainer(false),
          Positioned(
            top: MediaQuery.of(context).size.height-100,
              right: 0,
              left: 0,
              child: Column(
                children: [

                  Text("Or Sign Up with"),
                  Row(
                    children: [
                      TextButton(
                          onPressed: (){},
                          style: TextButton.styleFrom(
                            side: BorderSide(width: 1,color:Colors.grey),
                            minimumSize: Size(145, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            primary: Colors.white,
                            backgroundColor:Colors.red,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                CommunityMaterialIcons.google_plus,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Google'),
                            ],
                          ))
                    ],
                  )
                ],
              ))

        ],
      ),
    );
  }
  Widget buildTextField(IconData icon,String hintText,bool isPassword,bool isEmail){
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.white70,

          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.white),
            borderRadius:
            BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Colors.white),
              borderRadius:
              BorderRadius.all(Radius.circular(35.0))
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 14,color: Colors.white10
          ),

        ),
      ),
    );
  }
  Positioned buildBottomHalfContainer(bool showShadow){
    return Positioned(
        top: 535,
        right: 0,
        left: 0,
        child: Center(
          child: Container(
            height: 90,
            width: 90,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(70),
                boxShadow: [
                  if(showShadow)
                  BoxShadow(
                      color: Colors.black.withOpacity(.3),
                      spreadRadius: 1.5,
                      blurRadius: 10,
                      offset: Offset(0,1)
                  )
                ]
            ),
            child: !showShadow ? Container(
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(30),

                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0,1)

                    )
                  ]
              ),
              child: Container(
                margin: EdgeInsets.only(top: 13),
                child: Column(

                  children: [
                    Text("SIGN UP",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    ),
                    Icon(Icons.arrow_forward,color: Colors.white,size: 15,),
                  ],
                ),
              ),
            ) : Center(),
          ),

        )
    );
  }
}


