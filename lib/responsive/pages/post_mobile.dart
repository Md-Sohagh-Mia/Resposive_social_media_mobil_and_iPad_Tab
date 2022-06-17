import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resposive_social_media_mobil_and_desktop/responsive/pages/profile_mobile.dart';

import 'desktop.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var net_img= NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg");
    var img_net= Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg");
    return Scaffold(
          //  backgroundColor: Colors.deepOrange[200],
          appBar: AppBar(
            title: Text('H O M E'),

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
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,color: Colors.deepOrange,
                  ),
                  title: const Text('Profile'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfilePage()),
                    );
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
        );


  }
}
