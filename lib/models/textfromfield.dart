import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meetingflutter/component/textfieldcommonent.dart';
class textfield extends StatelessWidget {
   textfield({super.key, required this.text, required this.icon});
  final String text;
    final String icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onChanged: (value){
          print(value);
        },
        validator: (value){
          if(value==null||value.isEmpty){
            return "email is reruired";
          }
          else{
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          suffixIcon: icon=="yes"? Icon(Icons.remove_red_eye):null,
          filled: true,
          labelText: text,
          labelStyle: TextStyle(
            color: Colors.white70,
          ),
          fillColor: Color(0xff232429),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),

        )
    );
  }
}
