import 'package:flutter/material.dart';
import 'package:flutter_application_sahelhabitat/View/Inscription/Animation/FadeAnimation.dart';
import 'package:flutter_application_sahelhabitat/View/SideBarNavigation/sidebar/sidebar_layout.dart';


class connexion extends StatefulWidget {
  connexion({Key key}) : super(key: key);

  @override
  _connexionState createState() => _connexionState();
}

class _connexionState extends State<connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400]
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Register",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "Welcome Back",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        FadeAnimation(
                            1.4,
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(225, 95, 27, .3),
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Form(
                               
                                child: Column(
                                  children: <Widget>[
                                   
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[200]))),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "Email ",
                                            hintStyle:
                                            TextStyle(color: Colors.grey),
                                            border: InputBorder.none
                                        ),
                                        // onSubmitted: (val) =>val.isEmpty ? 'email': null,
                                        // onChanged: (value) => usersProvider.changeEmail(value),
                                      ),
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[200]))),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "Password",
                                            hintStyle:
                                            TextStyle(color: Colors.grey),
                                            border: InputBorder.none
                                        ),
                                        // onSubmitted: (val) =>val.isEmpty ? 'password': null,
                                        // onChanged: (value) => usersProvider.changePassword(value),

                                        obscureText: true,
                                      ),
                                    ),
                                   
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 30,
                        ),


                        FadeAnimation(
                            1.6,
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.orange[900]),
                              child: Center(
                                child: FlatButton(
                                  onPressed:(){
                                    // usersProvider.SaveUsers();
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SideBarLayout()));
                                    // final auth = FirebaseAuth.instance
                                    //     .createUserWithEmailAndPassword(
                                    //         email: usersProvider.usersEmail,
                                    //         password:
                                    //             usersProvider.usersPassword);
                                  } ,
                                  child: FlatButton(
                                                 onPressed: () {  
                                                     Navigator.push(
                                                 context,
                               MaterialPageRoute(builder: (context) => SideBarLayout()),
  );
                                                 },
                                                    child: Text(
                                      "Register",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                ),
                              ),
                            )),

                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}