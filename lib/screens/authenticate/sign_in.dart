import 'package:farmer_merchant/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late bool isSignUp=false;
  bool isRememberme = false;

  late TapGestureRecognizer _tapGestureRecognizer;

  final AuthService _auth = AuthService();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String email="";
  String psswd = "";
  String confrmpsswd = "";
  String error = "";
  String UserName="";
  String _dropdownValue="Farmer";
  var items = ["Farmer","Merchant"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = (){
        setState(() {
          print('hello');
        });
      };
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      body:new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(image: new AssetImage("assets/farmers_base.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),

          //buildBottomHalfContainer(true),

          AnimatedPositioned(
              duration: Duration(milliseconds: 700),
              curve: Curves.bounceInOut,
              top: isSignUp ? 200 : 230,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 700),
                curve: Curves.bounceInOut,
                height: isSignUp ? 320 : 250,
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
                child: SingleChildScrollView(
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
                                Text("SIGNIN",
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
                      if(isSignUp)
                        buildSignupSection(),
                      if(isSignUp)
                        buildBottomHalfContainer(false,"SignUp"),
                      if(!isSignUp)
                        buildSignInSection(),
                      if(!isSignUp)
                        buildBottomHalfContainer(false,"Login"),

                    ],

                  ),

                ),
              )

          ),




          /*Positioned(
            top: MediaQuery.of(context).size.height-100,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                        "Or Sign Up with",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
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
              ))*/

        ],
      ),
    );
  }

  Container buildSignInSection() {
    return Container(
      margin: EdgeInsets.only(top:20),

      child: Column(

        children: [
          buildTextField(Icons.mail_outline, "Email_id", false, true,false,false),
          buildTextField(Icons.lock_outline, "Password", true, false,false,false),
          DropdownButton(
            hint: Text("User Type"),
            style: TextStyle(
              color: Colors.white
            ),
            dropdownColor: Colors.black,
            value:_dropdownValue ,
            icon: Icon(Icons.keyboard_arrow_down),
            items: items.map((String items){
            return DropdownMenuItem(
                value: items,
                child: Text(items)
            );
          }
          ).toList(),
          onChanged: (val){
              setState(() {
                this._dropdownValue=val.toString();
              });

          },



          ),
          SizedBox(height: 20.0),

          Text(error,style: TextStyle(color: Colors.red,fontSize: 6.0)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(

                children: [

                  Checkbox(
                    value: isRememberme,
                    activeColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        isRememberme = !isRememberme;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                    ),
                  ),


                ],
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    print("hello");
                  });
                },

                child: Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                  ),
                ),

              )
            ],
          ),
        ],
      ),
    );
  }

  Container buildSignupSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(Icons.email_outlined,"Email-ID",false,true,false,false),
          buildTextField(Icons.lock_outline,"Password",true,false,false,false),
          buildTextField(Icons.lock_outline,"Confirm Password",false,false,true,false),
          buildTextField(Icons.email_outlined,"User Name",false,false,false,true),

          DropdownButton(
            hint: Text("User Type"),
            style: TextStyle(
                color: Colors.white
            ),
            dropdownColor: Colors.black,
            value:_dropdownValue ,
            icon: Icon(Icons.keyboard_arrow_down),
            items: items.map((String items){
              return DropdownMenuItem(
                  value: items,
                  child: Text(items)
              );
            }
            ).toList(),
            onChanged: (val){
              setState(() {
                this._dropdownValue=val.toString();
              });

            },



          ),
          SizedBox(height: 10.0),

          Text(error,style: TextStyle(color: Colors.red,fontSize: 12.0)),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
  Widget buildTextField(IconData icon,String hintText,bool isPassword,bool isEmail,bool iscpsswd,bool isusername){
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextField(
        obscureText: isPassword || iscpsswd,

        keyboardType: isEmail ? TextInputType.emailAddress: TextInputType.text,
        //keyboardType: isusername ? TextInputType.emailAddress: TextInputType.text,
        onChanged: (val){
          if(isEmail){
            setState(() {
              email=val;
            });
          } else if(isPassword)
            {
              setState(() {
                psswd=val;
              });
            } else if(iscpsswd)
              {
                setState(() {
                  confrmpsswd=val;
                });
              }else{
            setState(() {
              UserName=val;
            });
          }
        },
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
  Widget buildBottomHalfContainer(bool showShadow,String s){
    return AnimatedPositioned(
        duration: Duration(milliseconds: 700),
        curve: Curves.bounceInOut,
        top: isSignUp ? 470 : 430,
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
                padding: EdgeInsets.only(top: 5),
                child: Column(

                  children: [
                    Text(s,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),

                    GestureDetector(
                      onTap:() async{
                        if(s=="Login")
                        {
                          // dynamic result = await _auth.signInAnon();
                          // if(result == null) {
                          //   print('error signing in');
                          // } else {
                          //   print('signed in');
                          //   print(result);
                          // }
                          // print("email is :" + email);
                          // print("password is :" + psswd);
                          if(email!="" && psswd!="") {
                              print("you are signed in");
                              dynamic result = await _auth.signInWithEmailandPassword(email, psswd);

                              if(result==null){
                                  setState(() {
                                    error="could not sign in with those credentials";
                                   });

                             }
                        }else{
                        throw "fields cannot be empty" ;

                        }

                        }else{
                          // print("anjali");
                          if(email!="" && psswd!=""&&confrmpsswd!="") {
                            if (psswd == confrmpsswd) {
                              print("you are signed up");
                              dynamic result = await _auth.registerWithEandP(email,psswd,_dropdownValue,UserName);
                              if(result==null){
                                setState(() {
                                  error="please supply valid email";
                                });

                              }
                            }
                          }
                          else
                            {
                              throw "fields cannot be empty" ;
                            }
                        }

                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 15,

                      ),

                    ),




                  ],

                ),

              ),
            ) : Center(),
          ),

        )
    );
  }
}