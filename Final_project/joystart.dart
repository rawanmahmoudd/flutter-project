import 'package:flutter/material.dart';
import 'package:untitled/Final_project/joysignup_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                const Image(
                  image: AssetImage('assets/images/started.jpg'),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  bottom: 55,
                  left: 240,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RegisterSccreen(),),);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0x3FAECE9A),
                      padding: const EdgeInsets.all(16),
                      primary: const Color(0xFFF3E8EC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.6,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 530,
                  right: 20,
                  child: Container(

                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Wanderlust Ally JOY plans,',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0.6,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          ' you experience the joy of travel.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0.6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
