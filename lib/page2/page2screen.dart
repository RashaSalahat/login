
import 'package:flutter/material.dart';
import 'package:loginpage/page2/page2form.dart';

import '../../widgets/curved_widget.dart';
import '../page3/page3screen.dart';
import '../../widgets/gradient_button.dart';
String s='';
setUsername(String s1){
  s = s1;
}
getUsername(){
  return s;
}
class RegisterScreen extends StatefulWidget {

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  @override
  Widget build(BuildContext context) {
    print(getUsername());
    setState(() {
      setUsername("rand");
    });

    return Scaffold(
       appBar: AppBar(
         elevation: 0,
         backgroundColor: Colors.transparent,
         iconTheme: IconThemeData(
           color:Color(0xff6a515e)
         ),
       ),
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
                  'Complete Setting',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff6a515e),
                  ),
                ),
              ),
            ),
              Container(
                margin: const EdgeInsets.only(top:230),
                child: page2Form(),
              )
            ]
            ),
          ),),

        floatingActionButton: FloatingActionButton.extended(

          // gradient: LinearGradient(
          //   begin: Alignment.centerLeft,
          //   end: Alignment.centerRight,
          //   colors: [Color(0xffffae88), Color(0xff8f93ea)],
          // ),

          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>  Page3Screen(),
                ));
          },
          label: Text('Next',style: TextStyle(fontSize: 16),),
          icon: Icon(Icons.arrow_forward,
            color: Colors.white,),
          backgroundColor: Color(0xff6a515e),
          elevation: 10,)






    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       // Hide the debug banner
//       debugShowCheckedModeBanner: false,
//       title: 'Kindacode.com',
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   // The inital group value
//   String _selectedGender = 'male';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Kindacode.com',
//         ),
//       ),
//       body: Padding(
//           padding: const EdgeInsets.all(25),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text('Please let us know your gender:'),
//               ListTile(
//                 leading: Radio<String>(
//                   value: 'male',
//                   groupValue: _selectedGender,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedGender = value!;
//                     });
//                   },
//                 ),
//                 title: const Text('Male'),
//               ),
//               ListTile(
//                 leading: Radio<String>(
//                   value: 'female',
//                   groupValue: _selectedGender,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedGender = value!;
//                     });
//                   },
//                 ),
//                 title: const Text('Female'),
//               ),
//               const SizedBox(height: 25),
//               Text(_selectedGender == 'male' ? 'Hello gentlement!' : 'Hi lady!')
//             ],
//           )),
//     );
//   }
// }












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