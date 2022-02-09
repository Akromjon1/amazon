import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
static final String id ="home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: Image(
                image: AssetImage('assets/images/amazon_logo.png'),
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.mic, color: Colors.white,),
                    onPressed: (){},
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart, color: Colors.white,),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            //#search
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: Color(0xFF018197),
              height: 50,
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                ),
                child: Row(
                  children:  [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What are you looking for ?",
                          border: InputBorder.none,
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    Icon(Icons.camera_alt, color: Color(0xFF018197),),
                  ],
                ),
              ),
            ),
            Expanded(child:
            ListView(
              children: [
                //#location
                Container(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  height: 45,
                  color: Colors.blueGrey,
                  child: Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white,),
                      SizedBox(width: 5,),
                      Text("Deliver to Uzbekistan, Republic of", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                // #ads
                Container(
                  height: 140,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(70), bottomRight: Radius.circular(70)),
                              image: DecorationImage(
                                image: AssetImage('assets/images/image_1.jpeg'),
                                fit: BoxFit.cover,

                              ),

                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        width: 180,
                        color: Colors.white,
                        child: Center(
                          child: Text('We ship 45 million products', style: TextStyle(fontSize: 16,),),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                //#sign in
                Container(
                  height: 160,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sign in for the best experience', style: TextStyle(color: Colors.black, fontSize: 18),),
                      SizedBox(height: 15,),
                      Container(
                        height: 50,
                        color: Colors.orange,
                        width: double.infinity,
                        child: Center(
                          child: Text("Sign in", style: TextStyle(fontSize: 18),),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Create account",style: TextStyle(color: Colors.blueAccent, fontSize: 18),),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                // #deal
                Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text('Deal of the day', style: TextStyle(fontSize: 22, color: Colors.black),),
                        SizedBox(height: 15,),
                        Image(
                          image: AssetImage('assets/images/item_7.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        Text('Up to 31% of ABC UPC Battery pack', style: TextStyle(fontSize: 17),),
                        SizedBox(height: 6,),
                        Text('\$ 10.99 - \& 79.99', style: TextStyle(fontSize: 17),),

                    ],
                  ),
                ),
                SizedBox(height: 8,),

                //#best
                Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Best sellers in electronics', style: TextStyle(fontSize: 22, color: Colors.black),),
                      SizedBox(height: 16,),
                      Container(
                        height: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Image(
                                          image: AssetImage('assets/images/item_7.jpeg'),
                                          fit: BoxFit.cover,
                                        ),),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage('assets/images/item_6.jpeg'),
                                        fit: BoxFit.cover,
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage('assets/images/item_4.jpeg'),
                                        fit: BoxFit.cover,
                                      ),),
                                    SizedBox(height: 5,),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage('assets/images/item_5.jpeg'),
                                        fit: BoxFit.cover,
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // #top
                Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Top in camera', style: TextStyle(fontSize: 22, color: Colors.black),),
                      SizedBox(height: 16,),
                      Container(
                        height: MediaQuery.of(context).size.width,
                        child: Column(
                           children: [
                             Expanded(
                               child: Container(
                                 decoration: BoxDecoration(
                                   image: DecorationImage(
                                     image: AssetImage('assets/images/item_7.jpeg'),
                                     fit: BoxFit.cover,
                                   )
                                 ),
                               ),

                             ),
                             Expanded(
                               child: Container(
                                 child: Row(
                                   children: [
                                     Expanded(
                                       child: Container(
                                         child: Image(
                                           image: AssetImage('assets/images/item_4.jpeg'),
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                     ),
                                     SizedBox(width: 5,),
                                     Expanded(
                                       child: Container(
                                         child: Image(
                                           image: AssetImage('assets/images/item_5.jpeg'),
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
