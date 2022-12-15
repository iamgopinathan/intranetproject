import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/anothertaskpage.dart';
import 'package:flutter_application_1/myasset.dart';
import 'package:flutter_application_1/mytimesheet.dart';
import 'package:flutter_application_1/policies.dart';
import 'package:flutter_application_1/vajraloginsite.dart';


class feedback extends StatefulWidget {
  const feedback({super.key});

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {

Future showdialog(BuildContext,String message)async
{


return showDialog(

  builder: (context) => new AlertDialog(
    title: Column(
      children: [
        Text('Add Feedback or Improvement Ideas',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

        SizedBox(height: 10,),

       

        Container(
          height: 180,
          width: double.infinity,
          decoration:BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
          ),

          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    color: Colors.white,
                    hoverColor: Colors.white,
                    splashColor: Colors.white,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>feedback()));
                    },
                     icon: Icon(Icons.close,size: 18,color: Colors.grey,),
                
                    
                    
                  ),
                ],
              ),

              SizedBox(height: 15,),

              Row(
                
                
                children: [
                  
                  SizedBox(width: 10,),
                  Text('Feedback Or Improvement Ideas ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Text('*',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                ],
              ),


              SizedBox(height: 10,),

              SizedBox(
                height: 50,
                
            
                width: 300,

                child: Center(
                  child: TextField(
                    
                    
                    
                    
                    decoration: InputDecoration(
                    isDense: true,
                      

                      
                      border: OutlineInputBorder(

                        
                      

                        
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),



        
      ],
    ),

    actions: [

      Container(
             color: Color.fromARGB(255, 1, 31, 2),
          child: new RaisedButton(
          
    
          onPressed: null, child: Text('Add',style: TextStyle(color: Colors.white),),),
      ),

       Container(
        
         child: new RaisedButton(

          color: Color.fromARGB(255, 1, 31, 2),
          
          
      
          onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context) => feedback()));
          },
           child: Text('Close',style: TextStyle(color: Colors.white),),),
       ),

      

    ],
    ), 
     context:context,

  

);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green,size: 30),
        backgroundColor: Colors.white,
        title:Row(
          
          children: [
            Image.asset('images/logo.png',height: 30,),
            
          ],
         ) ,
      ),

      //body content....



      body:  SingleChildScrollView(
        child: Column(
            children: [
              
        
        
              //another container
        
              Container(
                
                child: Container(
                  margin: EdgeInsets.all(15),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 210, 228, 243),
                    
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Welcome back, Gopinathan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height: 20,),
                      Text('A place for your feedback. ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ],
                  ),
                ),
              ),
      
              //another section...
      
              Container(
                margin: EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RaisedButton(
                      color: Color.fromARGB(255, 1, 49, 2),
                      onPressed: (){

                      
                        showdialog(BuildContext,"Add Feedback or Improvement Ideas");





                      },
                      child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Add New Feedback',style: TextStyle(color: Colors.white),),
                    ),
                    )
                  ],
                ),
      
                
      
      
              ),
      
              //body container....
      
              Card(
                margin: EdgeInsets.all(30),
                elevation: 30,
                color: Colors.white,
                child: Container(
      
                 height: 500,
                 width: double.infinity,
                 child:DataTable(
                  columns: [
                    DataColumn(label: Text('Feedback & improvement idea')),
                    DataColumn(label: Text('Ideator')),
                    DataColumn(label: Text('Time')),
                  ],

                  rows: ,
                 ),

                 
                 
                ),
              ),
            ],
        ),
      ),


      
     
//drawer menu...

      endDrawer: Padding(
        
        padding: const EdgeInsets.only(top: 58),
        child: Drawer(

          
          
          elevation: 10.0,
          backgroundColor: Color.fromARGB(255, 16, 58, 18),
          

          child: Column(
            children: [
              

              ListTile(

                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                },
                leading: Icon(Icons.dashboard,color: Colors.white,),
                title: Text('Dashboard',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              ),

              //second listview

               ListTile(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>another()));
                },
                leading: Icon(Icons.task,color: Colors.white,),
                title: Text('Task Overview',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              ),

              //third listview

               ListTile(

                onTap: () {
                  

                  Navigator.push(context, MaterialPageRoute(builder:(context) =>myassets(),));
                      
                },
                leading: Icon(Icons.web_asset_sharp,color: Colors.white,),
                title: Text('My Assets',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              ),

              //fourth listview..

               ListTile(
                onTap: () {

                Navigator.push(context, MaterialPageRoute(builder:(context) =>timesheet(),));

                  
                },
                leading: Icon(Icons.timer_sharp,color: Colors.yellow,),
                title: Text('My Timesheet',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              ),

              //fifth
               ListTile(
                onTap: () {
                  
                  Navigator.push(context, MaterialPageRoute(builder:(context) =>policies(),));
                },
                leading: Icon(Icons.policy,color: Colors.yellow,),
                title: Text('policies',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              ),

              //six
               ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) =>feedback(),));
                },
                leading: Icon(Icons.feedback,color: Colors.white,),
                title: Text('FeedBack',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              ),











            ],
          )
        ),
      ),

      




    
    );


  }
}