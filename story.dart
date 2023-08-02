import 'dart:ui';

import 'package:flutter/material.dart';
class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Container(
        color: Colors.amber,
        child:SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Image(image: AssetImage("assets/life.jpg"),
            height: height * 0.40,
            width: width,
            fit: BoxFit.cover,
            ),
            Padding(
                  padding: const EdgeInsets.all(16.0),
            
            child:Container(
              
              height: height,
              width: width * 0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                
              ),
              child: Column(
              children:[
                Text("Once upon a time, in a small town in India, there lived a young boy named Piscine Molitor Patel. His friends and family called him Pi. Pi was curious and had a deep fascination with animals and nature.Pi's family owned a zoo, where he had the opportunity to learn about various animals and their behaviors. He found solace and friendship among the animals, especially a Bengal tiger named Richard Parker.",
              style: TextStyle(fontSize: 20,color: Colors.black),),

              SizedBox(height: 12,),
              Text("But their journey took an unexpected turn when the ship encountered a severe storm.The ship sank, leaving Pi stranded in the middle of the vast ocean on a lifeboat. The only other survivor from the ship was Richard Parker, the tiger. Initially, Pi was scared of the tiger, but he realized that they had to coexist to survive.",
              style: TextStyle(fontSize: 20,color: Colors.black),),
              ]
            ),
            )
          )],
        ),
      ),
      ),
      ),
    );
  }
}