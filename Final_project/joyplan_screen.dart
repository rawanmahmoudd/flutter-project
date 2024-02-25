import 'package:flutter/material.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
         children: [
           Text("   YOUR PLAN..",style:TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.grey[700]),),
           const SizedBox(height: 15),
           Container(
           child:  const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(" DAY 1",style:TextStyle(fontSize:40,fontWeight: FontWeight.w200),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image(image:NetworkImage("https://images.memphistours.com/large/844737225_3%20(2)%20(1).jpg"),
                        height: 100, width: 100,
                        ),
                        Text("Egyptian museum\n starts at 9 am")
                      ],
                    ),
                    Column(
                      children: [
                        Image(image:NetworkImage("https://www.egypttoursportal.com/images/2018/10/Architecture-of-Al-Azhar-Mosque-Egypt-Tours-Portal.jpg"),
                          height: 100, width: 100,),
                        Text("Alazhar mosque\n starts at 1 pm")
                      ],
                    )
                  ],
                ),
                 SizedBox(height: 5),
                Text(" DAY 2",style:TextStyle(fontSize:40,fontWeight: FontWeight.w200),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image(image:AssetImage("assets/images/pyr.jpg"),height: 100, width: 100,),
                        Text("Pyramids of giza\n starts at 7 am")
                      ],
                    ),
                    Column(
                      children: [
                        Image(image:NetworkImage("https://media-cdn.tripadvisor.com/media/photo-s/05/73/cc/20/dream-park.jpg")
                          ,height: 100, width: 100,
                        ),
                        Text("Dream park\n starts at 5 pm")
                      ],
                    )
                  ],
                ),
                 SizedBox(height: 5),
                Text(" DAY 3",style:TextStyle(fontSize:40,fontWeight: FontWeight.w200),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image(image:NetworkImage("https://www.ocregister.com/wp-content/uploads/2023/03/IMG-2912-2-1.jpg?w=749")
                          ,height: 100, width: 100,),
                        Text("New museum\n starts at 9 pm")
                      ],
                    ),
                    Column(
                      children: [
                        Image(image:NetworkImage("https://static1.s123-cdn-static-a.com/uploads/2133503/800_5cd0765cc7666.jpg")
                            ,height: 100, width: 100,),
                        Text("Egypt nile felucca\n starts at 5 pm")
                      ],
                    )
                  ],
                ),
               ]
           )
           )
         ],
        ),
      ),
    );
  }
}
