import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PasswordTextFormField extends StatefulWidget {
  final String text;
  const PasswordTextFormField({super.key, required this.text});
  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState(text: text);
}
class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  var passwordcontroler=TextEditingController();
  bool secourText= true;
   final String text;

  _PasswordTextFormFieldState({required this.text});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordcontroler,
      keyboardType: TextInputType.visiblePassword,
      obscureText: secourText,
      obscuringCharacter:"*",
      validator: (value) {
        if(value==null||value.isEmpty){
          return "password is required";
        }
        else if(value.length<9){
          return "Password must be >9";
        }
        else{
          return null;
        }
      },
      onFieldSubmitted: (String value) {
        print(value);
      },
      decoration: InputDecoration(
          filled: true,
          labelText: text,
          fillColor: Color(0xff232429),
          labelStyle:TextStyle(
              color: Colors.white
          ),
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  secourText=!secourText;
                });
              },
              icon: Icon
                (
                secourText?   Icons.visibility_off:
                Icons.visibility,
              ) ,
              color: secourText?  Colors.black45:
              Colors.green
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              // color: Colors.green,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.green,
              width: 2,
            ),
          )


      ),
    );
  }
}
