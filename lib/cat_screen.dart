import 'package:flutter/material.dart';
import 'package:meal_app/dishes_screen.dart';
import 'package:meal_app/meal_app_data.dart';
class CatScreen extends StatefulWidget {
  const CatScreen({super.key});

  @override
  State<CatScreen> createState() => _CatScreenState();
}

class _CatScreenState extends State<CatScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meal Categories"), 
       actions: [
        Container(
         height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue, 
          image: DecorationImage
          (
            fit: BoxFit.cover,
            image: NetworkImage 
            (
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlKNgD_-2f5WJB9aqceuKt-0p-PnJruyUEdg&s"
              ),
          ),
        ),
        ),
      ],),//prefix:Icon(Icons.backspace)
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(title: Text("Option 1"),)
          ],
        ),
      ),
      
      // bottomNavigationBar :IconButton(
      //   onPressed: (){
      //     print("Food");
      //   },
      //   icon: Icon(Icons.home),
      //   ),
        
      body: ListView(
        children: List.generate(
          mealAppData.length,
          (index)=> GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:
                  (context) =>
                         DishesScreen(dishes: mealAppData[index] ['dishes']),
                   ),
              );
            },
        child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10,5,10,5),
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(20),
                    color:Colors.grey,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        mealAppData[index] ['image'],
                       //https://i.pinimg.com/736x/20/41/51/204151842a34f6557f543fb9e0aef2da.jpg'
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10,5,10,5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      color: Colors.black54
                    ),
                    child:Text(
                      mealAppData[index] ['name'],
                      style: TextStyle(color: Colors.white,fontSize: 28),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("Floating button");
      },
      child: Icon(Icons.add),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home),)
      // ]),
    );
  }
}