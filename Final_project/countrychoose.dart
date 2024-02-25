import 'package:data_filters/data_filters.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Final_project/filterr.dart';
import 'package:untitled/Final_project/joyplan_screen.dart';
class ChooseCountry extends StatefulWidget {
  const ChooseCountry({Key? key});
  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}
class _ChooseCountryState extends State<ChooseCountry> {
  List<int>? filterIndex;
  @override
  Widget build(BuildContext context) {
    List<List<dynamic>> data = [
      ["Egypt", "White Desert", "Natural", "https://i0.wp.com/landioustravel.com/wp-content/uploads/2022/06/White-Desert-National-Park.jpg?fit=1000%2C674&ssl=1"],
      ["Egypt", "Egyptian museum", "Historical sites", "https://images.memphistours.com/large/844737225_3%20(2)%20(1).jpg"],
      ["Spain", "Alhambra", "Historical sites","https://media.tacdn.com/media/attractions-splice-spp-674x446/12/33/14/ac.jpg"],
      ["Kuwait", "The Grand mosque", "Religious sites", "https://www.islamicarchitecturalheritage.com/wp-content/uploads/2020/07/the-grand-mosque-of-kuwait-1.jpg"],
      ["Egypt", "Dream park", "Adventure ", "https://media-cdn.tripadvisor.com/media/photo-s/05/73/cc/20/dream-park.jpg"],
      ["Egypt", "Karnak Temple", "Historical", "https://i0.wp.com/jontynz.com/wp-content/uploads/2023/08/DSC00167.jpg?fit=3000%2C2000&ssl=1"],
      ["Kuwait", "Al shaheed park", "Natural wonder", "https://live.staticflickr.com/7923/45950536945_7a715d1715_b.jpg"],
      ["Egypt", "Alazhar mosque", "Religious sites","https://www.egypttoursportal.com/images/2018/10/Architecture-of-Al-Azhar-Mosque-Egypt-Tours-Portal.jpg"],
      ["Kuwait", "Kuwait National museum", "Historical sites","https://live.staticflickr.com/2197/2063475534_04c0f72730_b.jpg"],
      ["Egypt", "New museum", "Historical ", "https://www.ocregister.com/wp-content/uploads/2023/03/IMG-2912-2-1.jpg?w=749"],
      ["Spain", "Burgos Cathedral", "Religious sites","https://www.swedishnomad.com/wp-content/images/2020/03/Burgos-Cathedral.jpg"],
      ["Egypt", "Egypt nile felucca", "Adventure ", "https://static1.s123-cdn-static-a.com/uploads/2133503/800_5cd0765cc7666.jpg"],
      ["France","Eiffel Tower","Landmark","https://www.planetware.com/photos-large/F/france-paris-eiffel-tower.jpg"],
      ["Italy","Colosseum","Historical sites","https://www.planetware.com/photos-large/I/italy-rome-colosseum.jpg"],
      ["Japan","Mount Fuji","Natural wonder","https://s3.amazonaws.com/shecodesio-production/uploads/files/000/019/674/original/mt_fuji_japan.jpg?1635057366"],
      ["Egypt", "Valley of the Kings", "Historical", "https://lp-cms-production.imgix.net/2023-07/f6e18c09be072890091813ba173e0fae-valley-of-the-kings.jpeg"],
      ["USA","Statue of Liberty","Landmark","https://a.cdn-hotels.com/gdcs/production174/d785/96c72d1c-32dc-4575-9aae-3e3329db1e7d.jpg?impolicy=fcrop&w=800&h=533&q=medium"],
      ["Egypt", "Pyramids of giza", "Historical ", "https://images.globalhighlights.com/allpicture/2021/06/bdd9119e11ef437389da5b13_cut_600x800_56.jpg"],
    ];
    List<String> titles = ['Country', 'Place', 'Required', 'Images'];
    List<List<dynamic>> filteredData = data;
    if (filterIndex != null) {
      filteredData = filterIndex!.map((index) => data[index]).toList();
    }
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          DataFilters(
            data: data,
            filterTitle: titles,
            showAnimation: true,
            recent_selected_data_index: (List<int>? index) {
              setState(() {
                filterIndex = index;
              });
            },
            style: FilterStyle(
              buttonColor: Colors.green,
              buttonColorText: Colors.white,
              filterBorderColor: Colors.grey,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredData.length,
              itemBuilder: (ctx, i) {
                return CountryFilter(data: filteredData[i]);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) =>PlanScreen(),),);
            },
            child: Text('Done'),
          ),
        ],
      ),
    );
  }
}
