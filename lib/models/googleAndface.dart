import 'package:flutter/cupertino.dart';

class GoogleAndFace extends StatelessWidget{
  const GoogleAndFace({super.key, required this.text, required this.image});
  final  String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 16),
        color: Color(0xff00CF71),
        height: 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image(
              image: AssetImage("${image}",
              ),
              height: 24,
              width: 24,
            ),
            SizedBox(width: 5,),
            Text(text,
              style: TextStyle(
                fontSize:16 ,
                color: Color(0xff667080) ,
                fontFamily: "Poppins",

              ),
            ),
          ],
        ),
      ),
    );
  }


}