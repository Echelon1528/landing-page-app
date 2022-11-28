import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Colors.white,

        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: ListView(
            children:  <Widget>[
              Container(
                  // padding: const EdgeInsets.only(left:30, top:70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'welcome',
                        style: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.w600
                        ),
                      ),

                    ],
                  )
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[

                    Text(
                      'to the ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 10
                        ,),
                    ),
                    Text(
                      'Attendance Management System ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 10,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20,),

              Container(
                // mainAxisAlignment: MainAxisAlignment.center,
                margin: const EdgeInsets.symmetric(vertical: 40),
                child: const Image(
                    width: 300,
                    // image: AssetImage("assets/photo1.png"),
                    image: AssetImage("photo1.png"),
                  ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   // margin: const EdgeInsets.symmetric(vertical: 50),
              //   children: const [
              //     Image(
              //       width: 300,
              //       // image: AssetImage("assets/photo1.png"),
              //       image: AssetImage("photo1.png"),
              //     ),
              //   ],
              // ),


              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: const [
              //     Padding(
              //       padding:
              //       EdgeInsets.symmetric(horizontal: 10),
              //     ),
              //     Text('by Lotus Beta Analytics',style: TextStyle(fontSize: 7,),
              //     ),
              //   ],
              // ),

              const SizedBox(height: 50,),

              Column(

                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60,),
                  ),
                  TextFormField(
                    controller: _textFieldController,
                    decoration:InputDecoration(
                        labelText: "Email",
                        hintText: ('Your Email Address'),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: IconButton(onPressed: (){
                          // print("button pressed");
                          _textFieldController.clear();
                        },
                          icon: const Icon(Icons.cancel),
                        ),

                        contentPadding: const EdgeInsets.symmetric(horizontal: 32, vertical:20),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color:Colors.black, width: 0.5,),

                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(200),
                          borderSide: const BorderSide(color: Colors.black),
                          gapPadding: 10,
                        )
                    ) ,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                    ],
                  )
                ],
              ),

              const SizedBox(height: 40,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        CircleAvatar(

                          radius: 55,
                          backgroundColor: Colors.orange[200],

                        ),

                      ],
                    ),const Padding(padding: EdgeInsets.only(left: 5,right: 10)),
                    const Text('or',style:
                    TextStyle(
                      fontSize: 20,

                    ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 5,right:10,)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.orange[200],
                        ),

                      ],
                    ),
                  ],
                ),

              ),
              const SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('Scan to continue',style: TextStyle(fontSize: 15, fontWeight:FontWeight.bold),)
                ],
              ),
              const SizedBox(height: 120,),

              Container(
                child: Column(
                  children: [
                    Text('Not Registered? ENROLL',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent[100]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100,),
              Column(
                children: const [
                  Text('About the AttendanceManagement System',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,
                        color: Colors.lightBlue),
                  ),
                ],
              )












            ],
          ),
        ),
      ),


    );
  }
}









