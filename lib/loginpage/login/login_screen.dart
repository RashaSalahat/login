
import 'package:flutter/material.dart';

import '../../widgets/curved_widget.dart';
import 'login_form.dart';


class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Container(
             height: double.infinity,
             decoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.topCenter,
                   end: Alignment.bottomCenter,
                   colors: [Color(0xfff2cbd0), Color(0xfff4ced9)],
                 )),



               child:SingleChildScrollView(
                 child: Stack(children:[ CurvedWidget(
                   child: Container(
                     padding: const EdgeInsets.only(top: 100,left:50 ),
                       width: double.infinity,
                     height: 300,
                     // color: Colors.red,
                       decoration: const BoxDecoration(
                         gradient: LinearGradient(
                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter,
                           colors: [Colors.white, Colors.white24],
                         ),
                       ),


                     child: const Text(
                       'Login',
                       style: TextStyle(
                         fontSize: 40,
                         color: Color(0xff6a515e),
                       ),
                     ),
                   ),
                 ),
                   Container(
                     margin: const EdgeInsets.only(top:230),
                     child: LoginForm(),
                   )
                 ]
           ),
               ),)
    );
  }
}

// extendBodyBehindAppBar: true,
// appBar: AppBar(
// elevation: 0,
// backgroundColor: Colors.transparent,
// ),
// body:  Container(
// height: double.infinity,
// decoration: BoxDecoration(
// gradient: LinearGradient(
// begin: Alignment.topCenter,
// end: Alignment.bottomCenter,
// colors: [Color(0xfff2cbd0), Color(0xfff4ced9)],
// )),
// child: SingleChildScrollView(
// child: Stack(
// children: <Widget>[
// CurvedWidget(
// child: Container(
// padding: const EdgeInsets.only(top: 100, left: 50),
// width: double.infinity,
// height: 300,
// decoration: BoxDecoration(
// gradient: LinearGradient(
// begin: Alignment.topCenter,
// end: Alignment.bottomCenter,
// colors: [Colors.white, Colors.white.withOpacity(0.4)],
// ),
// ),
// child: Text(
// 'Login',
// style: TextStyle(
// fontSize: 40,
// color: Color(0xff6a515e),
// ),
// ),
// ),
// ),
// Container(
// margin: const EdgeInsets.only(top: 230),
// child: LoginForm(userRepository: _userRepository,),
// )
// ],
// ),
// ),
// ),
// ),