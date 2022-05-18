 import 'package:flutter/material.dart';

import '../../Doctor/doctor.dart';
import '../../register/register_screen.dart';
import '../../widgets/gradient_button.dart';
import 'login_screen.dart';

class LoginForm extends StatefulWidget {

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
 final TextEditingController _emailController=TextEditingController();
 final TextEditingController _passwordController=TextEditingController();
 @override
 void initState(){
   super.initState();
 }

 @override
  Widget build(BuildContext context)
  {
 return Padding(
   padding: const EdgeInsets.all(20.0),
   child: Form(
     child: Column(children: [
         TextFormField(
           controller: _emailController,
           decoration: InputDecoration(
             icon: Icon(Icons.email),
             labelText: 'Email'
           ),
           keyboardType: TextInputType.emailAddress,
           autovalidateMode:AutovalidateMode.onUserInteraction,
         ),
       TextFormField(
         controller: _passwordController,
         decoration: InputDecoration(
             icon: Icon(Icons.lock),
           labelText: 'Password'
         ),
         autovalidateMode:AutovalidateMode.onUserInteraction,
         obscureText: true,
       ),
       SizedBox(
         height: 10,
       ),
       Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(80),
           gradient: LinearGradient(
             begin: Alignment.centerLeft,
             end: Alignment.centerRight,
             colors: [Color(0xffffae88),Color(0xff8f93ea)]
           )
         ),





       ), Container(
     width: 150,
     height: 45,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(80),
       gradient: LinearGradient(
         begin: Alignment.centerLeft,
         end: Alignment.centerRight,
         colors: [Color(0xffffae88), Color(0xff8f93ea)],
       ),
     ),
     child: MaterialButton(
         onPressed: () {
           Navigator.push(context, MaterialPageRoute(
             builder: (BuildContext context) {
               return DoctorApp(
               );
             },
           ));


           },
         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
         shape: StadiumBorder(),
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: const <Widget>[
               Text("LogIn",style: TextStyle(
                 color: Colors.white,
               ),),
               Icon(
                 Icons.check,
                 color: Colors.white,
               ),
             ],
           ),
         )),
   ),
       SizedBox(
         height: 10,
       ),
       Container(
         width: 150,
         height: 45,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(80),
           gradient: LinearGradient(
             begin: Alignment.centerLeft,
             end: Alignment.centerRight,
             colors: [Color(0xffffae88), Color(0xff8f93ea)],
           ),
         ),
         child: MaterialButton(
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(
                 builder: (BuildContext context) {
                   return RegisterScreen(
                   );
                 },
               ));},
             materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
             shape: StadiumBorder(),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: const <Widget>[
                   Text("Register",style: TextStyle(
                     color: Colors.white,
                   ),),
                   Icon(
                     Icons.arrow_forward,
                     color: Colors.white,
                   ),
                 ],
               ),
             )),
       ),
     ],),
   ),
 );
  }
}
