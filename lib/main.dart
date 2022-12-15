import 'package:flutter/material.dart';
import 'package:flutter_application_1/anothertaskpage.dart';

import 'package:flutter_application_1/feedback.dart';
import 'package:flutter_application_1/mytimesheet.dart';



import 'package:flutter_application_1/vajraloginsite.dart';



void main()=>runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,

  
  home: new login(),
));


class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      


      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SizedBox(height: 15,),

                
          Image.asset('images/logo.png',height: 40,),



          Flexible(

            flex: 8,
            
            child: Container(
              
              
             
            child: Center(
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  

                
                
                Text('Welcome Back',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22),),

              

                
                  
                   Container(
                    
                    width: 500,

                    margin: EdgeInsets.all(30),
                    
                    
                   
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.yellow,
                          blurRadius: 12,
                          
                        ),
                      ]
                    ),
                     child: RaisedButton(
                      color: Colors.white,                    
                      onPressed: (){

                        Navigator.push(context, MaterialPageRoute(builder:(context) =>login(),));
                      },
                                     
                      child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        
                        
                        
                        
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            
                                
                      Image.network('https://cdn-icons-png.flaticon.com/512/300/300221.png',width: 25,height: 25,),
                              
                      SizedBox(width: 10,),
                      
                      Text('Login With Vajra Google Account',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                          ],
                        ),
                      ),
                      ),
                   
                      
                   
                    
                     
                     
                                     
                     
                                 
                     
                                     
                  ),
                   ),
                
              ],
            ),
            ),
          ),
          
          
          
          ),

          Flexible(
            flex: 2,
            child: Container(
              
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom:30.0),
                  child: Text('© Copyright 2022 Vajra Global Consulting Services LLP',style: TextStyle(color: Colors.grey,fontSize: 11),),
                ),
              ],
            ),
          ),
          ),
        ],
      ) ,



      );
     
     }
}