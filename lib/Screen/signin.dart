
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meetingflutter/Screen/signup.dart';
import 'package:meetingflutter/models/googleAndface.dart';
import 'package:meetingflutter/models/passwordtextfromfield.dart';
import 'package:meetingflutter/models/textfromfield.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  var emailcontroler=TextEditingController();
  var passwordcontroler=TextEditingController();
  bool secourText= true;
  bool checkboxvalue= false;
  GlobalKey<FormState> formkey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body:
      SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 40),
          child: Form(
            key:formkey ,
            child: Container(
              decoration: BoxDecoration(

              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello ",
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1CE783),
                              fontFamily:"Poppins" ,
                            )),
                        Text("Again! ",
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff1CE783),
                              fontFamily:"Poppins" ,
                            )),
                      ],
                    ),
                  ),
                  Text("Welcome back you’ve \n been missed"
                    ,style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontFamily: "Poppins",
                    ) ,
                  ),
                  SizedBox(height: 20),
                 textfield(text: 'email', icon: 'no', ),
                  SizedBox(height: 12),
                  // PasswordTextFormField(text: 'password'),
                  SizedBox(height: 7),
                  textfield(text: 'password',  icon: 'yes',),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Checkbox(
                        value: checkboxvalue,
                        onChanged: (value) {
                          setState(() {
                            checkboxvalue=!checkboxvalue;
                          });
                        },
                        autofocus: true,
                        activeColor: Colors.red,
                      ),
                      Text("Remember me",
                        style: TextStyle(
                          color: Color(0xff4E4B66),
                          fontFamily: "Poppins",
                          fontSize: 14,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: (){},
                          child:
                          Text("Forgot the password ?",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Poppins",
                              color: Color(0xff5890FF),
                            ),

                          )),

                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(color: Color(0xff00CF71),borderRadius: BorderRadius.circular(8)),
                    width: double.infinity,
                    height: 50,
                    child: MaterialButton(

                      onPressed: () {  },
                      child: Text("Login",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Center(
                      child: Text("or continue with",
                        style: TextStyle(
                          color: Color(0xff4E4B66),
                          fontSize: 14,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GoogleAndFace(
                          text: 'Facebook',
                          image: 'assets/images/Facebook-Icon-PNG-31-768x768.png',),
                        SizedBox(width: 30,),
                        GoogleAndFace(text: 'Google',
                          image: 'assets/images/google-icon.png',),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("don’t have an account",
                      style: TextStyle(
                      color: Colors.white70
                      ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return SignUp();
                        }
                        )
                        );
                      }, child: Text("?Sign Up",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),

                      )
                    ],
                  ),
                ],

              ),
            ),
          ),
        ),
      ) ,
    );
  }
}