import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
           children: [
            Container(
              height: 280,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage
                  (
                    
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzyYqVQIPjsnGxBOs1dwRc6c8n4jbqBSZrGA&s",
                ),
                ),
              ),
            )
           ], 
          ),
    );
  }
}