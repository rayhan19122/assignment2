import 'package:flutter/material.dart';
import 'package:assignment2_on_flutter/widgets/info.dart';
class Course extends StatelessWidget{
  final String text;
  final String image;
  final int batch;
  final int seats;
  final int days;
  const Course({
    super.key,
    required this.text,
    required this.image,
    required this.batch,
    required this.seats,
    required this.days,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300, width: 0.5),
        boxShadow: [BoxShadow(
          color: Colors.grey.shade400,
          blurRadius: 10,
          offset: Offset(0, 5),
        ),
      ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              image,
              height:110,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            height: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade400, width: 0.5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.,
                    children: [
                      Info(text: 'Batch $batch',),
                      SizedBox(width: 8,),
                      Info(
                        text: '$seats Seats Left',
                        icon: Icons.people_outline,
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0,),
                  Info(
                    text: '$days Days Left', // Result: 21 Days Left
                    icon: Icons.access_time,
                  ),
                ],
              ),
            ),
          ),

          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              //border: Border.all(color: Colors.grey.shade300, width: 0.5),
            ),
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                text,
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),

          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFF8F9FB),
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 7.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 45,

                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE9ECF2),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "SEE DETAILS",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black87,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

}