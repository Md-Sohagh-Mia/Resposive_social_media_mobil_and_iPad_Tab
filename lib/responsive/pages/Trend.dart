import 'dart:ui';

import 'package:flutter/material.dart';

class TrendPage extends StatelessWidget {
  const TrendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
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
    );
  }
}
