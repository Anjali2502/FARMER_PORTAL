import 'package:farmer_merchant/screens/authenticate/sign_in.dart';
import 'package:farmer_merchant/screens/wrapper.dart';
import 'package:farmer_merchant/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';
import 'models/farmer_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<FUser?>.value(
      catchError: (_, __) => null,
      initialData: null,
      value: AuthService().user,
      child: new MaterialApp(
        // home: new Home(),
        home: Wrapper(),
        theme: ThemeData(
          primarySwatch: Colors.blue
        )

      ),
    );
  }
}
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   _LoginPageState createState() => new _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   bool isSignUp = true;
//   bool isRememberme = false;
//
//   late TapGestureRecognizer _tapGestureRecognizer;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _tapGestureRecognizer = TapGestureRecognizer()
//       ..onTap = (){
//         setState(() {
//           print('hello');
//       });
//     };
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       backgroundColor: Colors.black,
//       body:new Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           new Image(image: new AssetImage("assets/farmers_base.jpg"),
//           fit: BoxFit.cover,
//             color: Colors.black87,
//             colorBlendMode: BlendMode.darken,
//           ),
//
//           //buildBottomHalfContainer(true),
//
//           AnimatedPositioned(
//             duration: Duration(milliseconds: 700),
//             curve: Curves.bounceInOut,
//             top: isSignUp ? 200 : 230,
//               child: AnimatedContainer(
//                 duration: Duration(milliseconds: 700),
//                 curve: Curves.bounceInOut,
//                 height: isSignUp ? 320 : 250,
//                 padding: EdgeInsets.all(20),
//                 width: MediaQuery.of(context).size.width-40,
//                 margin: EdgeInsets.symmetric(horizontal: 20),
//                 decoration: BoxDecoration(
//                 color: Colors.white10,
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     blurRadius: 15,
//                     spreadRadius: 5
//                   )
//                 ]
//                 ),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           GestureDetector(
//                             onTap: (){
//                               setState(() {
//                                 isSignUp = false;
//                               });
//                             },
//                             child: Column(
//                               children: [
//                                 Text("LOGIN",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16,
//                                   color: isSignUp? Colors.white10 : Colors.white
//                                 ),
//                                 ),
//                                 if(!isSignUp)
//                                 Container(
//                                   margin: EdgeInsets.only(top: 3),
//                                   height: 2,
//                                   width: 55,
//                                   color: Colors.orange,
//
//                                 )
//                               ],
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: (){
//                               setState(() {
//                                 isSignUp = true;
//                               });
//                             },
//                             child: Column(
//                               children: [
//                                 Text("SIGNUP",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16,
//                                       color: isSignUp ? Colors.white : Colors.white10
//                                   ),
//                                 ),
//                                 if(isSignUp)
//                                 Container(
//                                   margin: EdgeInsets.only(top: 3),
//                                   height: 2,
//                                   width: 55,
//                                   color: Colors.orange,
//
//                                 )
//                               ],
//                             ),
//                           )
//
//                         ],
//                       ),
//                       if(isSignUp)
//                       buildSignupSection(),
//                       if(!isSignUp)
//                       buildSigninSection()
//                     ],
//                   ),
//                 ),
//           )
//
//           ),
//
//
//
//           buildBottomHalfContainer(false),
//           /*Positioned(
//             top: MediaQuery.of(context).size.height-100,
//               right: 0,
//               left: 0,
//               child: Column(
//                 children: [
//
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 8.0),
//                     child: Text(
//                         "Or Sign Up with",
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       TextButton(
//                           onPressed: (){},
//                           style: TextButton.styleFrom(
//                             side: BorderSide(width: 1,color:Colors.grey),
//                             minimumSize: Size(145, 40),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             primary: Colors.white,
//                             backgroundColor:Colors.red,
//                           ),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 CommunityMaterialIcons.google_plus,
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Text('Google'),
//                             ],
//                           ))
//                     ],
//                   )
//                 ],
//               ))*/
//
//         ],
//       ),
//     );
//   }
//
//   Container buildSigninSection() {
//     return Container(
//                     margin: EdgeInsets.only(top: 20),
//                     child: Column(
//                       children: [
//                         buildTextField(Icons.mail_outline, "Email_id", false, true),
//                         buildTextField(Icons.lock_outline, "Password", true, false),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 Checkbox(
//                                   value: isRememberme,
//                                   activeColor: Colors.white,
//                                   onChanged: (value) {
//                                     setState(() {
//                                       isRememberme = !isRememberme;
//                                     });
//                                   },
//                                 ),
//                                 Text(
//                                   'Remember me',
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     color: Colors.white70,
//                                   ),
//                                 ),
//
//                               ],
//                             ),
//                             TextButton(
//                               onPressed: () {
//                                 setState(() {
//                                   print("hello");
//                                 });
//                               },
//                               child: Text(
//                                 'Forgot Password ?',
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   color: Colors.red,
//                                 ),
//                               ),
//
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   );
//   }
//
//   Container buildSignupSection() {
//     return Container(
//                     margin: EdgeInsets.only(top: 20),
//                     child: Column(
//                       children: [
//                         buildTextField(Icons.email_outlined,"Email-ID",false,true),
//                         buildTextField(Icons.lock_outline,"Password",true,false),
//                         buildTextField(Icons.lock_outline,"Confirm Password",true,false),
//                         /*Container(
//                           width: 200,
//                           margin: EdgeInsets.only(top: 20),
//                           child: RichText(
//                             textAlign: TextAlign.center,
//                             text: TextSpan(
//                               recognizer: _tapGestureRecognizer,
//                               text: "Forgot Password?",
//                               style: TextStyle(color: Colors.red)
//                             ),
//                           ),
//                         )*/
//                       ],
//                     ),
//                   );
//   }
//   Widget buildTextField(IconData icon,String hintText,bool isPassword,bool isEmail){
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8.0),
//       child: TextField(
//         obscureText: isPassword,
//         keyboardType: isEmail ? TextInputType.emailAddress: TextInputType.text,
//         decoration: InputDecoration(
//           prefixIcon: Icon(
//             icon,
//             color: Colors.white70,
//
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color:Colors.white),
//             borderRadius:
//             BorderRadius.all(Radius.circular(35.0)),
//           ),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color:Colors.white),
//               borderRadius:
//               BorderRadius.all(Radius.circular(35.0))
//           ),
//           contentPadding: EdgeInsets.all(10),
//           hintText: hintText,
//           hintStyle: TextStyle(
//               fontSize: 14,color: Colors.white10
//           ),
//
//         ),
//       ),
//     );
//   }
//   Widget buildBottomHalfContainer(bool showShadow){
//     return AnimatedPositioned(
//         duration: Duration(milliseconds: 700),
//         curve: Curves.bounceInOut,
//         top: isSignUp ? 470 : 430,
//         right: 0,
//         left: 0,
//         child: Center(
//           child: Container(
//             height: 90,
//             width: 90,
//             padding: EdgeInsets.all(15),
//             decoration: BoxDecoration(
//                 color: Colors.white10,
//                 borderRadius: BorderRadius.circular(70),
//                 boxShadow: [
//                   if(showShadow)
//                   BoxShadow(
//                       color: Colors.black.withOpacity(.3),
//                       spreadRadius: 1.5,
//                       blurRadius: 10,
//                       offset: Offset(0,1)
//                   )
//                 ]
//             ),
//             child: !showShadow ? Container(
//               decoration: BoxDecoration(
//                   color: Colors.teal,
//                   borderRadius: BorderRadius.circular(30),
//
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.black.withOpacity(.3),
//                         spreadRadius: 1,
//                         blurRadius: 2,
//                         offset: Offset(0,1)
//
//                     )
//                   ]
//               ),
//               child: Container(
//                 margin: EdgeInsets.only(top: 13),
//                 padding: EdgeInsets.only(top: 5),
//                 child: Column(
//
//                   children: [
//                     Text("SIGN UP",
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: Colors.white,
//                     ),
//                     ),
//                     Icon(Icons.arrow_forward,color: Colors.white,size: 15,),
//                   ],
//                 ),
//               ),
//             ) : Center(),
//           ),
//
//         )
//     );
//   }
// }
//
//
