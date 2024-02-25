import 'package:flutter/material.dart';
import 'package:untitled/Final_project/Joydestination_screen.dart';

class JoyHomeScreen extends StatefulWidget {
  @override
  _JoyHomeScreenState createState() => _JoyHomeScreenState();
}

class _JoyHomeScreenState extends State<JoyHomeScreen> {
  int currentIndex = 0;
  List<String> country = [
    "https://holidify.com/images/bgImages/INDIA.jpg",
    "https://www.kids-world-travel-guide.com/images/paris_eiffeltower_ssk500.jpeg",
    "https://www.cuddlynest.com/blog/wp-content/uploads/2022/10/top_attractions_in_turkey_blue_mosque.png",
    "https://hoponworld.com/wp-content/uploads/2020/07/Kota-Kinabalu-water-temple.jpg",
  ];

  List<String> name = [
    "India",
    "France",
    "Turkey",
    "Malaysia",
  ];

  List<String> country1 = [
    "https://www.holidify.com/images/cmsuploads/compressed/44353012260bae55d3a2eo_20221207151430.jpg",
    "https://c.myholidays.com/blog/blog/content/images/2021/01/places-to-visit-in-Kuwait.webp",
    "https://d1bv4heaa2n05k.cloudfront.net/other%2F9ebf29b6-5718-4a03-87ed-e1bc5ab07971_1531299296407%2F1531299858674-shutterstock_316241720.jpg",
    "https://www.goatsontheroad.com/wp-content/uploads/2022/09/walk-across-the-Tower-Bridge-of-London.jpeg",
  ];

  List<String> name1 = [
    "Egypt",
    "Kuwait",
    "Brazil",
    "England",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
         Container(
          margin: const EdgeInsets.all(15),
              width: double.infinity,
              child:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: const Icon(Icons.menu_outlined),
                        ),
                        const Text(
                          ' Cairo, Egypt ',
                          style: TextStyle(
                            //color:Color(0xFFC6A4C7),
                            //color: Color(0xFFB0B0B0),
                            color: Colors.black,
                            fontSize: 18,
                            //fontFamily: 'DancingScript',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: const Icon(Icons.person),
                        ),
                      ],
                    )
                  ],
                ),
            ),
          const SizedBox(height:5),
          const Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text(
                 '  Suggestions',
                style: TextStyle(
                  color: Color(0xFF3EA2C2),
                   fontSize:28,
                  fontFamily: 'DancingScript',
                 fontWeight: FontWeight.w400,
            ),
            ),
             ],
           ),
          const SizedBox(height: 5),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right:4,left: 4),
                  width: 180,
                  decoration: BoxDecoration(
                      border: Border.all(color:Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        country[index],
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        right: 8,
                        child: Text(
                          name[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'DancingScript',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          const SizedBox(height:10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '  Most Popular',
                style: TextStyle(
                  color:Color(0xFFCA76CC),
                  //color: Color(0xFFB0B0B0),
                  //color: Color(0xFF3EA2C2),
                  fontSize:28,
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right:4,left: 4),
                  width: 130,
                  decoration: BoxDecoration(
                      border: Border.all(color:Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        country1[index],
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        right: 8,
                        child: Text(
                          name1[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'DancingScript',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigate to the second page when the image is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DestinationScreen()),
                  );
                },
                child: Container(
                  width: 400,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // border: Border.all(color:Colors.grey, width: 2),
                    image: const DecorationImage(
                      image: NetworkImage('https://as1.ftcdn.net/v2/jpg/02/30/86/52/1000_F_230865278_PpIMqjt6UboXgdplQt2WskRuRcgA64CM.jpg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Create my plan now',
                      style: TextStyle(
                        //color: Color(0xFFC6A4C7),
                        color: Colors.blueGrey,
                        fontSize: 35,
                        fontFamily: 'DancingScript',
                        //fontFamily: 'Inika',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFCA76CC),
        backgroundColor: Colors.grey[100],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded), label: "Fav"),
          const BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}