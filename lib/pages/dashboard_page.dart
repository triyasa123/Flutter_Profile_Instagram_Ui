import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/profile_picture.dart';
import '../widgets/info_item.dart';
import '../widgets/tab_item.dart';
import '../widgets/story_item.dart';

class InstagramUi extends StatelessWidget {
  const InstagramUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Pengguna Instagram'),
            SizedBox(width: 10),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.link),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem('Posts', '999'),
                      InfoItem('Followers', '10K'),
                      InfoItem('Following', '1K'),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Pengguna Instagram",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              text: TextSpan(
                  text:
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC ',
                  children: [
                    TextSpan(
                      text: '#hastag',
                      style: TextStyle(color: Colors.blue),
                    )
                  ]),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Link goes here',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                'Edit Profile',
                style: TextStyle(color: Colors.black),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem('Story 1'),
                  StoryItem('Story 2'),
                  StoryItem('Story 3'),
                  StoryItem('Story 4'),
                  StoryItem('Story 5'),
                  StoryItem('Story 6'),
                  StoryItem('Story 7'),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                          ),
                          Icon(
                            Icons.add,
                            size: 30,
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Text('New'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              TabItem(Icons.grid_on_outlined, true),
              TabItem(Icons.movie_creation_sharp, false),
              TabItem(Icons.person_pin_outlined, false),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 50,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              'https://picsum.photos/seed/picsum/200/300',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
