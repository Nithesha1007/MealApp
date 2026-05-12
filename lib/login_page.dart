import 'package:flutter/material.dart';
import 'package:meal_app/cat_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 950,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://i.pinimg.com/1200x/cd/b5/86/cdb586501301fbc609ebcfda412e074a.jpg",
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 30,
            left: 90,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => CatScreen()));
                print("nithesha");
              },

              label: Text("Explore Now", style: TextStyle(fontSize: 33)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
              ),
              icon: Icon(Icons.arrow_forward_outlined, size: 29,),
            ),
          ),
        ],
      ),
    );
  }
}
