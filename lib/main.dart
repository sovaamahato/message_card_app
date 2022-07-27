import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //variables define
  String message = "hello!";
  Color themecolor = Colors.red;
   TextEditingController controller=TextEditingController();

  // void msgData(String newMsg) {
  //   setState(() {
  //     message = newMsg;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: themecolor,
            title: Text('Message Card App'),
          ),
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 300.0,
                  width: 400,
                  color: themecolor,
                  child: Center(
                      child: Text(
                    message,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'cursive',
                      fontSize: 30.0,
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: controller,
                    maxLength: 30,
                    onChanged: (String newMsg){
                      setState(() {
                        message=newMsg;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(borderSide:BorderSide(color: themecolor,width: 2.0) ),

                      prefixIcon: Icon(
                        Icons.edit,
                        color: themecolor,
                      ),
                      hintText: "write msg here...",
                      helperText: "write text in this box!!!",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: themecolor,
                    onPressed: () {
                      controller.clear();
                      setState(() {
                        message='';
                      });
                    },
                    child: Text(
                      'clear text',
                      // style: TextStyle(
                      //   color: Colors.red,
                      // ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2.0,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                setState(() {
                                  
                                  themecolor=Colors.red;
                                });
                                
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 27.0,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                themecolor=Colors.blue;
                              });
                              
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 27.0,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                themecolor=Colors.pink;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.pink,
                              radius: 27.0,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                themecolor=Colors.orange;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.orange,
                              radius: 27.0,
                            ),
                          ),
                        ]),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
