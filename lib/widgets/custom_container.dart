import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final String iconPath;
  final double height;
  final double width;
  final Color containerColor; 

  const CustomContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.iconPath,
    this.height = 110,
    this.width = 375,
    this.containerColor = const Color.fromRGBO(175, 116, 92, 1), 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: containerColor, 
        borderRadius: BorderRadius.circular(18),
      ),
      child: Stack(
        clipBehavior: Clip.none, 
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 19),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Image.asset(
                    iconPath,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0, 
            bottom: 0, 
            child: Image.asset(
              imagePath,
              height: height,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10),
            child: Text(
              subtitle,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
