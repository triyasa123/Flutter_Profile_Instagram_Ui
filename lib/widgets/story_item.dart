import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  StoryItem(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://picsum.photos/seed/picsum/200/300',
                      ),
                      fit: BoxFit.cover),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(title)
        ],
      ),
    );
  }
}