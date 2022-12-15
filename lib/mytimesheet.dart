import 'package:flutter/material.dart';
import 'package:flutter_application_1/anothertaskpage.dart';
import 'package:flutter_application_1/feedback.dart';
import 'package:flutter_application_1/myasset.dart';
import 'package:flutter_application_1/policies.dart';

import 'package:flutter_application_1/vajraloginsite.dart';
import 'package:intl/intl.dart';

class timesheet extends StatefulWidget {
  const timesheet({super.key});

  @override
  State<timesheet> createState() => _timesheetState();
}

class _timesheetState extends State<timesheet>with TickerProviderStateMixin {


   
  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(length: 2,vsync: this);

    TextEditingController dateinput = TextEditingController(); 

 @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

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

      //body

      body:  Column(
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
                    Text('Keep track of your workflow with your own, personal timesheet.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  ],
                ),
              ),
            ),



            //tabs container...

             Container(
             margin:EdgeInsets.all(20) ,
             child: TabBar(
              unselectedLabelColor: Colors.black,
               
              controller: _tabController,
              indicator:BoxDecoration(
                
                color: Color.fromARGB(255, 1, 39, 2),
                borderRadius: BorderRadius.circular(12),
              ),
              
              
              tabs: [

                Tab(text: 'Daily Report',),
                Tab(text: 'Customized Report'),
                


             ],
             ),
           ),




            //tabbar view..


            Expanded(
              child: TabBarView(

                controller: _tabController,
                
                children: [
                   //first tabbar view...
                  Text('data'),


                  //second tabbar view...
                  

                  Card(
                    
                    margin: EdgeInsets.all(20),
                    elevation: 20,
                    child: Container(
                      color: Colors.white,
                      
                      
                    
                      

                      child:Column(
                        
                        children: [

                          SizedBox(height: 15,),
                          Text('Worked Hours',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                          SizedBox(height: 15,),

                          Text('Select start Date',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Container(

                            margin: EdgeInsets.all(10),
                            child:SizedBox(
                              width: 200,
                              height:50,
                              child: TextField(
                                
                            controller: dateinput, //editing controller of this TextField
                            decoration: InputDecoration( 
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.calendar_today,color: Colors.blue,), //icon of text field
                            labelText: "YYYY-MM-DD" //label text of field
                            ),
                            readOnly: true,  //set it true, so that user will not able to edit text
                            onTap: () async {
                              DateTime?pickedDate = await showDatePicker(
                              context: context, initialDate: DateTime.now(),
                              firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2101)
                              );
                                              
                            if(pickedDate != null ){
                                print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                                String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                                 //formatted date output using intl package =>  2021-03-16
                                  //you can implement different kind of Date Format here according to your requirement
          
                                setState(() {
                                    dateinput.text = pickedDate.toString(); //set output date to TextField value. 
                                });
                            }
                          },
                        ),
                        ),
        
        
                          ),

                          SizedBox(height: 5,),

                          //end date...

                          Text('Select End date',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                          Container(

                            margin: EdgeInsets.all(20),
                            child:SizedBox(
                              width: 200,
                              height:50,
                              child: TextField(
                
                            controller: dateinput, //editing controller of this TextField
                            decoration: InputDecoration( 
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.calendar_today,color: Colors.blue,), //icon of text field
                            labelText: "YYYY-MM-DD" //label text of field
                            ),
                    readOnly: true,  //set it true, so that user will not able to edit text
                    onTap: () async {
                      DateTime?pickedDate = await showDatePicker(
                          context: context, initialDate: DateTime.now(),
                          firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101)
                      );
                      
                      if(pickedDate != null ){
                          print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                          print(formattedDate); //formatted date output using intl package =>  2021-03-16
                            //you can implement different kind of Date Format here according to your requirement
    
                          setState(() {
                          dateinput.text = pickedDate.toString(); //set output date to TextField value. 
                    });
                     }
                    },
                    ),
                    )
        
        
                    ),




                        ],
                      ) ,
                    ),
                  )
            
                  
            
              ]
              ),
            ),
          ],
      ),

      
//drawer menu..

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

              //fourth listview

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

