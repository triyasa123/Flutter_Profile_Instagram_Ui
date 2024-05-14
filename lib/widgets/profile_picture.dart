import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 115,
          height: 115,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red, Colors.amber],
            ),
          ),
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            color: Colors.grey,
              image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/id/237/200/300'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(55),
              border: Border.all(width: 3, color: Colors.white)),
        ),
      ],
    );
  }
}
