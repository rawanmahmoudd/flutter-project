import 'package:flutter/material.dart';
import 'package:untitled/Final_project/countrychoose.dart';
import 'package:untitled/Final_project/joyplan_screen.dart';
class DestinationScreen extends StatefulWidget {
  @override
  _DestinationScreenState createState() => _DestinationScreenState();

}
class _DestinationScreenState extends State<DestinationScreen> {
  DateTime? fromDate;
  DateTime? toDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top:200,left:10,right: 10),
              padding: const EdgeInsets.only(top: 20),
              height: 220,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                children: [
                  const Text(
                    'Date',
                    style: TextStyle(
                        fontSize: 40
                        ,fontFamily: 'DancingScript',
                        color: Color(0xFFC6A4C7),
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "From",
                            style: TextStyle(fontSize: 20, color:Color(0xFFC6A4C7),fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height:15),
                          MaterialButton(
                            onPressed: () => openDatePicker(true),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                fromDate != null
                                    ? "${fromDate!.day}/${fromDate!.month}/${fromDate!.year}"
                                    : "Select date",
                                style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
                              ),
                            ),
                            color: const Color(0xFFC6A4C7),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "To",
                            style: TextStyle(fontSize: 20, color:Color(0xFFC6A4C7),fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 15),
                          MaterialButton(
                            onPressed: () => openDatePicker(false),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                toDate != null
                                    ? "${toDate!.day}/${toDate!.month}/${toDate!.year}"
                                    : "Select date",
                                style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
                              ),
                            ),
                            color: const Color(0xFFC6A4C7),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ChooseCountry(),),);
              },
              style: ElevatedButton.styleFrom(
                primary:const Color(0xFFC6A4C7),// Button color
                onPrimary: Colors.black, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Adjust the value for rounded corners
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'DONE',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
      ]
    ),
    )
    );
  }

  void openDatePicker(bool isFromDate) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );

    if (selectedDate != null) {
      setState(() {
        if (isFromDate) {
          fromDate = selectedDate;
        } else {
          toDate = selectedDate;
        }
      });
    }
  }
}