import 'package:flutter/material.dart';
import 'package:loginpage/page3/page3form.dart';

import '../../page2/page2screen.dart';
import '../../widgets/curved_widget.dart';
import '../page1/page1info/welcomeinfo.dart';



class Page3Screen extends StatefulWidget {

  @override
  State<Page3Screen> createState() => _Page3ScreenState();
}

class _Page3ScreenState extends State<Page3Screen> {
  @override
  Widget build(BuildContext context) {
    print(getUsername());
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
                child: page3form(),
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
                //  builder: (BuildContext context) =>  welcomescreeninfo(),
                  builder: (BuildContext context) =>  welcomescreeninfo(),
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
