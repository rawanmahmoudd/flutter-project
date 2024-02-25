import 'package:flutter/material.dart';

class CountryFilter extends StatefulWidget {
  CountryFilter({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<dynamic> data;

  @override
  _CountryFilterState createState() => _CountryFilterState();
}

class _CountryFilterState extends State<CountryFilter> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.data[0],
                  style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'DancingScript',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFCA76CC),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Place: ${widget.data[1]}',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF083449),
                  ),
                ),
                Text(
                  'Required: ${widget.data[2]}',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF083449),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network(
              widget.data[3],
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}