import 'dart:ui';

import 'package:flutter/material.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var net_img= NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg");
    var img_net= Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg");
    return Scaffold(

      appBar: AppBar(
      title: Container(
        width: 250,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white70,
            borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          // keyboardType: TextInputType.multiline,
          //     maxLines: null,
          style: TextStyle(fontSize: 12),
          decoration: InputDecoration(
            border: InputBorder.none,
              hintText:"Search",
              prefixIcon: Icon(Icons.search,color: Colors.deepOrange,)
          ),
        ),
      ),

        actions: [
          Row(
            children: [
              Text("S O C I L  M E D I A"),
              SizedBox(width: 50,),
              Icon(Icons.home),
              SizedBox(width: 50,),
              Icon(Icons.settings),
              SizedBox(width: 50,),
              Icon(Icons.notifications_active_outlined),
              SizedBox(width: 50,),
              Icon(Icons.chat),
              SizedBox(width: 30,),
            ],
          )

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // First column
            Expanded(flex: 2,
              child: SingleChildScrollView(

                child: Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 0.4,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              overflow: Overflow.visible,
                              children: [
                                Ink.image(image: net_img,width: double.infinity,height: 150,fit: BoxFit.cover,),
                                Positioned(
                                  bottom: -50,
                                  left: 0,
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 40,
                                    child: CircleAvatar(
                                        radius: 38,
                                        backgroundImage: net_img),
                                  ),
                                ),

                              ],
                            ),

                            SizedBox(height: 45,),
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                children: [
                                  Text("Md Sohagh",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                                  SizedBox(height: 5,),
                                  Text("Mobile App Developer",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.grey),),
                                  SizedBox(height: 20,),
                                  Divider(thickness: 1,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Text("536",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                          SizedBox(height: 5,),
                                          Text("followers",style: TextStyle(color: Colors.grey),),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 60,
                                        child: VerticalDivider(
                                          width: 10,
                                          thickness: 1,

                                        ),
                                      ),

                                      Column(
                                        children: [
                                          Text("50",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                          SizedBox(height: 5,),
                                          Text("following",style: TextStyle(color: Colors.grey),),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Divider(thickness: 1,),




                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Who is following you",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),



                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                              //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded( flex: 1,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage: net_img),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 6,left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Text("Android developer",style: TextStyle(color: Colors.grey,fontSize: 12),)
                                  ],
                                ),
                              ),
                            ),

                            Expanded( flex: 4,
                              child:  Container(
                                //  height: 44.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                ),

                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                  child: Text("Follower",style: TextStyle(fontSize: 12),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),





                    ],
                  ),
                ),
              ),
            ),
            Expanded(flex: 4,
                child:SingleChildScrollView(

                  child: Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Card(
                          elevation: 0.4,
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded( flex: 1,
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepOrange,
                                  radius: 25,
                                  child: CircleAvatar(
                                      radius: 23,
                                      backgroundImage: net_img),
                                ),
                              ),
                              Expanded(flex: 4,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.deepOrange[50],

                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.only(left: 10,right: 5),
                                            child: TextField(
                                              keyboardType: TextInputType.multiline,
                                              maxLines: null,

                                              style: TextStyle(fontSize: 12),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:"Write something here",
                                                // prefixIcon: Icon(Icons.post_add)
                                              ),
                                            ),
                                          ) ,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [

                                            Expanded( flex: 5,
                                              child: Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.image,color: Colors.deepOrange,size: 14,),
                                                      Text("Image",style: TextStyle(fontSize: 12),),
                                                    ],
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.video_call,color: Colors.deepOrange,size: 14,),
                                                      Text("Video",style: TextStyle(fontSize: 12),),
                                                    ],
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.location_on_outlined,color: Colors.deepOrange,size: 14,),
                                                      Text("Location",style: TextStyle(fontSize: 12),),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Expanded(flex: 2,
                                              child: Container(
                                                // height: 44.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(30),
                                                    gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                                                ),

                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                                                  child: Text("Share",style: TextStyle(fontSize: 12)),
                                                ),
                                              ),
                                            )





                                          ],
                                        ),
                                      ),

                                    ],
                                  )
                              ),
                            ],

                          ),
                        ),

                        SizedBox(height: 10,),


                        Card(
                            elevation: 0.4,
                            // clipBehavior: Clip.antiAlias,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [

                                  Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
                                        width: double.infinity,height: 250,fit: BoxFit.cover,),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.favorite,color: Colors.deepOrange,),
                                      SizedBox(width: 10,),
                                      Icon(Icons.comment),
                                      SizedBox(width: 10,),
                                      Icon(Icons.share),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text("62542",style: TextStyle(color: Colors.grey,fontSize: 12),),
                                      SizedBox(width: 5,),
                                      Text("Likes",style: TextStyle(color: Colors.grey,fontSize: 12),),

                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text("Sohagh",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                      SizedBox(width: 5,),
                                      Expanded(
                                          child: Text("This is my first post, Have a nice day!",style: TextStyle(fontSize: 12),maxLines: 2,)),

                                    ],
                                  ),

                                ],
                              ),
                            )),
                        SizedBox(height: 5,),
                        Card(
                            elevation: 0.4,
                            // clipBehavior: Clip.antiAlias,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [

                                  Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
                                        width: double.infinity,height: 250,fit: BoxFit.cover,),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.favorite_border,color: Colors.deepOrange,),
                                      SizedBox(width: 10,),
                                      Icon(Icons.comment),
                                      SizedBox(width: 10,),
                                      Icon(Icons.share),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text("62542",style: TextStyle(color: Colors.grey,fontSize: 12),),
                                      SizedBox(width: 5,),
                                      Text("Likes",style: TextStyle(color: Colors.grey,fontSize: 12),),

                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text("Sohagh",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                      SizedBox(width: 5,),
                                      Expanded(
                                          child: Text("This is my first post, Have a nice day!",style: TextStyle(fontSize: 12),maxLines: 2,)),

                                    ],
                                  ),

                                ],
                              ),
                            )),
                        SizedBox(height: 5,),
                        Card(
                            elevation: 0.4,
                            // clipBehavior: Clip.antiAlias,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [

                                  Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
                                        width: double.infinity,height: 250,fit: BoxFit.cover,),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.favorite_border,color: Colors.deepOrange,),
                                      SizedBox(width: 10,),
                                      Icon(Icons.comment),
                                      SizedBox(width: 10,),
                                      Icon(Icons.share),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text("62542",style: TextStyle(color: Colors.grey,fontSize: 12),),
                                      SizedBox(width: 5,),
                                      Text("Likes",style: TextStyle(color: Colors.grey,fontSize: 12),),

                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text("Sohagh",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                      SizedBox(width: 5,),
                                      Expanded(
                                          child: Text("This is my first post, Have a nice day!",style: TextStyle(fontSize: 12),maxLines: 2,)),

                                    ],
                                  ),

                                ],
                              ),
                            )),
                        SizedBox(height: 5,),
                        Card(
                            elevation: 0.4,
                            // clipBehavior: Clip.antiAlias,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [

                                  Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
                                        width: double.infinity,height: 250,fit: BoxFit.cover,),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.favorite,color: Colors.deepOrange,),
                                      SizedBox(width: 10,),
                                      Icon(Icons.comment),
                                      SizedBox(width: 10,),
                                      Icon(Icons.share),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text("62542",style: TextStyle(color: Colors.grey,fontSize: 12),),
                                      SizedBox(width: 5,),
                                      Text("Likes",style: TextStyle(color: Colors.grey,fontSize: 12),),

                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text("Sohagh",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                      SizedBox(width: 5,),
                                      Expanded(
                                          child: Text("This is my first post, Have a nice day!",style: TextStyle(fontSize: 12),maxLines: 2,)),

                                    ],
                                  ),

                                ],
                              ),
                            )),
                        SizedBox(height: 5,),




                      ],
                    ),
                  ),
                ),
            ),
            Expanded(flex: 2,
                child:Column(
                  children: [
                    Card(
                      elevation: 0.4,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Trends for you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              SizedBox(height: 20,),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("#Travel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                  SizedBox(height: 5,),
                                  Text("518k Share",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("#facebook",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                  SizedBox(height: 5,),
                                  Text("158k Share",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Column(
                                children: [
                                  Text("#Sohagh",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                  SizedBox(height: 5,),
                                  Text("58k Share",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("#Ptothom_Alo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                  SizedBox(height: 5,),
                                  Text("678k Share",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("#Dhaka",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                  SizedBox(height: 5,),
                                  Text("100k Share",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                ],
                              ),



                            ],
                          ),
                        ),
                      ) ,
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(right: 30,left: 30),
                      child: Container(
                        height: 38.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                        ),

                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                          child: Text("Share",style: TextStyle(fontSize: 12)),
                        ),
                      ),
                    ),
                  ],
                ),
            ),

          ],
        ),
      ),
    );
  }
}
