import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resposive_social_media_mobil_and_desktop/responsive/pages/desktop.dart';
import 'package:resposive_social_media_mobil_and_desktop/responsive/pages/post_mobile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width/3;
    var net_img= NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg");
    var img_net= Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg");
    return Scaffold(
    //  backgroundColor: Colors.deepOrange[200],
      appBar: AppBar(
        title: Text('P R O F I L E'),

        actions: [
          Row(
            children: [
              Icon(Icons.notifications_active_outlined),
              SizedBox(width: 20,),
              Icon(Icons.chat),
              SizedBox(width: 20,),
            ],
          )

        ],
        
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 120.0,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                ),
                child: Center(
                    child: Text(
                  "Hi, Sohagh",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,color: Colors.deepOrange,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PostPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,color: Colors.deepOrange,
              ),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,color: Colors.deepOrange,
              ),
              title: const Text('Setting'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DesktopPage()),
                );
              },
            ),

          ],
        ),
      ),
    body: SingleChildScrollView(

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
                          Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Android developer",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                  Expanded( flex: 2,
                    child:  Container(
                      height: 44.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                      ),

                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        child: Text("Follower"),
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
                          Text("Hasan",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Ux/Ui Designer",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                  Expanded( flex: 2,
                    child:  Container(
                      height: 44.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                      ),

                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        child: Text("Follower"),
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
                          Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Android developer",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                  Expanded( flex: 2,
                    child:  Container(
                      height: 44.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                      ),

                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        child: Text("Follower"),
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
                          Text("Hasan",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Ux/Ui Designer",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                  Expanded( flex: 2,
                    child:  Container(
                      height: 44.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                      ),

                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        child: Text("Follower"),
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
                          Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Android developer",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                  Expanded( flex: 2,
                    child:  Container(
                      height: 44.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                      ),

                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        child: Text("Follower"),
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
                          Text("Hasan",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Ux/Ui Designer",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                  Expanded( flex: 2,
                    child:  Container(
                      height: 44.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                      ),

                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        child: Text("Follower"),
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
                          Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Android developer",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                  Expanded( flex: 2,
                    child:  Container(
                      height: 44.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                      ),

                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        child: Text("Follower"),
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
                          Text("Hasan",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Ux/Ui Designer",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                  Expanded( flex: 2,
                    child:  Container(
                      height: 44.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                      ),

                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        child: Text("Follower"),
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
                          Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Android developer",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                  Expanded( flex: 2,
                    child:  Container(
                      height: 44.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                      ),

                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        child: Text("Follower"),
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
                          Text("Hasan",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Ux/Ui Designer",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                  Expanded( flex: 2,
                    child:  Container(
                      height: 44.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                      ),

                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        child: Text("Follower"),
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
                          Text("Sohagh",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Android developer",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                  Expanded( flex: 2,
                    child:  Container(
                      height: 44.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                      ),

                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        child: Text("Follower"),
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
                          Text("Hasan",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("Ux/Ui Designer",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),

                  Expanded( flex: 2,
                    child:  Container(
                      height: 44.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orange])
                      ),

                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                        child: Text("Follower"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),



          ],
        ),
      ),
    ),
    );
  }
}
