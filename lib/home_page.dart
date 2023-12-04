import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 30, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Color(0xFF018197),
        title: Row(
          children: [
            Container(
              width: 100,
              child: Image(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.mic,
            color: Colors.white,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          SizedBox(
            width: 6,
          ),
        ],
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: Color(0xFF018197),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: Colors.grey),
                    color: Colors.white),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: "What are you looking for?",
                          icon: Icon(
                            Icons.search,
                          ),
                          border: InputBorder.none),
                    )),
                    Icon(
                      Icons.camera_alt,
                      color: Color(0xFF018197),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  color: Colors.blueGrey,
                  height: 40,
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Deliver to Corco,Republic of Uzbekistan",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        width: 150,
                        child: Center(
                          child: Text("We ship 45 million products"),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(70),
                                bottomLeft: Radius.circular(70)),
                            image: DecorationImage(
                                image: AssetImage("assets/images/bus.jpg"),
                                fit: BoxFit.cover)),
                      ))
                    ],
                  ),
                  height: 150,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  color: Colors.white,
                  height: 160,
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign in for the best experience",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.orange,
                        child: Center(
                          child: Text(
                            "Sign in",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Create  an account",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deal of the day",
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      Image(
                        image: AssetImage("assets/images/notebook.jpg"),
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                            "Up to 31% off APC UPC Battery Back \$10.99-\$79.9"),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),

                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.white,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Best sellers in Elecronics,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(height: 10,),
                        Container(
                          height:MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(child:Column(
                                children: [
                                  Expanded(child:Image(image: AssetImage("assets/images/phone1.jpg"),fit: BoxFit.cover,) ),
                                  SizedBox(height: 5,),
                                  Expanded(child:Image(image: AssetImage("assets/images/box2.jpg"),fit: BoxFit.cover,) ),
                                ],
                              ), ),
                              SizedBox(width: 5,),
                              Expanded(child:Column(
                                children: [
                                  Expanded(child:Image(image: AssetImage("assets/images/cofee.jpg"),fit: BoxFit.cover,) ),
                                  SizedBox(height: 5,),
                                  Expanded(child: Image(image: AssetImage("assets/images/phone.jpg"),fit: BoxFit.cover,))
                                ],
                              ) ),
                            ],
                          ) ,

                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
