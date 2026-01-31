import 'package:flutter/material.dart';

class Info extends StatelessWidget{
  final String text;
  final IconData? icon;
  const Info({super.key, required this.text,this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9,vertical: 5),
      decoration: BoxDecoration(
        color: Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if(icon!=null)...[
            Icon(icon,color: Colors.black87,size: 10),
            const SizedBox(width: 6),
          ],

          Text(
            text,
            style: TextStyle(color: Colors.black87, fontSize: 10, fontWeight: FontWeight.w600),
          ),

        ],
      ),
    );
  }

}