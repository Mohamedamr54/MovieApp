import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meetingflutter/Screen/signin.dart';
import 'package:meetingflutter/models/textfromfield.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:  AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // margin: EdgeInsets.symmetric(vertical:5,horizontal: 7 ),
            alignment: Alignment.center,
            width: 48,
            height: 54,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
             color: Colors.black,
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
          ),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create Account",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1CE783),
                ),
              ),
              SizedBox(height: 10,),
              Text("Register now and start exploring all that our app has \nto offer. We’re excited to welcome you to our community!",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 20,),
              textfield(text: 'Email', icon: 'no',),
              SizedBox(height: 20,),
              textfield(text: 'password', icon: 'yes',),
              SizedBox(height: 20,),
              textfield(text: 'Confirm password', icon: 'yes',),
              SizedBox(height: 20,),
              IntlPhoneField(
                 keyboardType:TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  filled: true,
                  fillColor:   Color(0xff232429),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical:10 ),
                decoration:
                BoxDecoration(
                  color: Color(0xff00CF71),
                  borderRadius: BorderRadius.circular(12),

                ),
                width: double.infinity,
                height: 60,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)
                        {
                          return SignUp();
                        }
                        )
                    );
                  },
                  child: Text("Create Acount",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("By logging. your agree to our",
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey
                    ),
                  ),
                  SizedBox(width: 4,),
                  Text("Terms &Condition",
                    style: TextStyle(
                      fontSize: 12, color: Colors.white,
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(width: 4,),
                  Text("and",
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey
                    ),
                  ),


                ],
              ),
              SizedBox(height: 5,),
              Center(
                child: Text("Privacy Policy",
                style: TextStyle(
                  color: Colors.white,
                ),),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomeScreen();
                    }
                    )
                    );
                  },
                      child: Text("Sign in",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}