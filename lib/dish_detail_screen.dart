import 'package:flutter/material.dart';
// import 'package:meal_app/add_tocard.dart';

class DishDetailScreen extends StatefulWidget {
  final Map<String, dynamic> dish;
  const DishDetailScreen({super.key, required this.dish});
  @override
  State<DishDetailScreen> createState() => _DishDetailScreenState();
}

class _DishDetailScreenState extends State<DishDetailScreen> {
   
   int quantity = 1;//0 potta user - click panna kooda value varom so default kaga 1 podorom 
   bool isExpanded = false ;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 
      widget
      .dish['name'],
      child: Scaffold(
        body: SingleChildScrollView
        (
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage
                (
                  widget.dish['image'],
      //'https://i.pinimg.com/1200x/12/fa/09/12fa0949b2710c669630bb38c662eac0.jpg'
                ),
                ),
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [  
            Text(
              widget.dish['name'],          
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            
            Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              quantity++;//user click pannumpodhu value increase agum 
                            });
                          },
                       child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.add, color: Colors.white,),
                       ),//idhu noram container la icon button use pani add koodukurom idhu dha user click pannuvanga 
                          
                        ),  
                          SizedBox(width: 15),//for spacing 
                          Text(
                            quantity.toString(),//ipo use pandradhu add or remove rendumea integer so using tostring 
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 15),
                          InkWell(
                            onTap: () {
                              if (quantity > 1){//dart logic use pani remove pandrom 1 ku mela erundhu user ku venam na remove kooduka 
                                setState(() {//for ui display rebuilt 
                                  quantity--;
                                });
                              }
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(Icons.remove, color: Colors.white,),
                            ),
                          ),
                         
                      ],
                    ),
            ),
          ],
            ),
 Container(
             height: 50,
             width: 100,
             decoration: BoxDecoration(
              color: Colors.white,
             ),
             child: Text(
              " ⭐ 4.7 ",
              style: TextStyle(fontSize: 26 , color: Colors.black , fontWeight: FontWeight.bold),
              
              ),
             
           ),
              Text(
            widget.dish['description'],  
              maxLines: isExpanded ? null: 2,
              overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis ,
              style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold , color: Colors.black),
              ),
              SizedBox(height: 5),
              GestureDetector(
onTap: () {
  setState(() {
    isExpanded = !isExpanded;
  });
},
child: Text(
  isExpanded ? "Read less" : "Read more",
  style: TextStyle(
    color: Colors.pink,
    fontWeight: FontWeight.bold
  ),
),
              ),
            // Text("₹ ${widget.dish['price']}", style: TextStyle(fontSize: 28 , color: Colors.red) ),  
            // Text(
            // widget.dish['description'],
            //   style: TextStyle(
            //     fontSize: 24, fontWeight: FontWeight.w300 , 
                
            //     ),
            //     maxLines: 2,
                
            // ),
           
            //  Text
            //  (widget.dish['making'],
            //  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            //  ),
          
            //  Text(widget.dish ['ingredients'].toString(),
            //  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            //  ),
           
            //  Text(widget.dish ['healthBenefits'],
            //  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            //  SizedBox(height: 20),
            SizedBox(height: 30),
   Row(
     
      children: [
             SizedBox(width: 20,),
              Container(
               height: 100,
               width: 180,
               decoration: BoxDecoration(
                color: Colors.white,
               ),
               child: Text(
                "🆓🚚Free Delivery",
                style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.bold),
                ),
               
             ),
              Container(
               height: 100,
               width: 50,
               decoration: BoxDecoration(
                color: Colors.white,
               ),
               child: Text(
                " | ",
                style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.bold),
                
                ),
               
             ),
             SizedBox(width: 3,),
              Container(
               height: 100,
               width: 130,
               decoration: BoxDecoration(
                color: Colors.white,
               ),
               child: Text(
                " ⏱️20min",
                style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.bold),
                ),
               
             ),
      ],
    ),
  
  SizedBox(height: 120,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    Column(
                 children: [
                     Text("Total Amount",
                    style: TextStyle(fontSize:23 , color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold ),
                    ),
                    SizedBox(height: 20,),
                    Text("₹ ${widget.dish['price']}", style: TextStyle(fontSize: 28 , color: Colors.red) ),
                 ],
                    ),
                    Container(
             
                        height: 70,
                        width: 213,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          
                          borderRadius: BorderRadius.circular(10),
                        
                        ),
                        alignment: Alignment.center,
                        child: Text("Buy Now", style: TextStyle(color: Colors.white , fontSize: 30),
                        ),
                    ),
                   ],
              ),
           ),
           
    ],
  )
// InkWell(
//   onTap: () {
//     Navigator.of(
//       context,
//       ).push(MaterialPageRoute(builder: (context) => AddTocard(dish: widget.dish,)));
//   },
//           child: Container(
//               width: double.infinity,
//               margin: EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.red,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Text(
//                 "Add to Card",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 24,
//                 ),
//               ),
//              ),
// ),
          
          
          ),
        ),
      );
  }
}