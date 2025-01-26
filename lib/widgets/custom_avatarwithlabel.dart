import 'package:flutter/material.dart';

class CustomAvatarWithLabel extends StatelessWidget {
  final String labelText; 
  final String? imagePath; 
  final Color backgroundColor; 
  final double radius; 
  final TextStyle? textStyle; 

  const CustomAvatarWithLabel({
    super.key,
    required this.labelText,
    this.imagePath,
    this.backgroundColor = Colors.amberAccent,
    this.radius = 60,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 65,
          backgroundColor:Colors.white,
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            radius: 60,
            backgroundImage: imagePath != null ? AssetImage(imagePath!) : null,
            child: imagePath == null
                ? Icon(Icons.person, size: radius, color: Colors.white)
                : null,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          labelText,
          style: textStyle ??
              TextStyle(
                color: Colors.grey.shade500,
                fontSize: 16,
              ),
        ),
      ],
    );
  }
}
