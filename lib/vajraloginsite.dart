import 'package:flutter/material.dart';
import 'package:flutter_application_1/anothertaskpage.dart';
import 'package:flutter_application_1/feedback.dart';
import 'package:flutter_application_1/myasset.dart';
import 'package:flutter_application_1/mytimesheet.dart';
import 'package:flutter_application_1/policies.dart';



class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
        body: SingleChildScrollView(
        child: Column(
          children: [
            
      
      
            //another container....

      
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
                    Text('Here`s your Personal Dashboard !',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  ],
                ),
              ),
            ),
      
            //card container...
      
      
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    
                    height: 180,
                    width: 180,
      
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.person_outlined,color: Colors.yellow,size: 30,),
      
                        Text('Assigned',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      
                        Text('0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                      ],
                    ),
                  ),
      
                  
                ),
      
                //second card....
      
      
                 Card(
                  elevation: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    
                    height: 180,
                    width: 180,
      
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.calendar_month,color: Colors.yellow,size: 30,),
      
                        Text('In Progress',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      
                        Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                      ],
                    ),
                  ),
      
                  
                ),               
              ],
            ),



            SizedBox(height: 15,),
      
      
      
            //second row....
      
      
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                 Card(
                  elevation: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    
                    height: 180,
                    width: 180,
      
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.cases_outlined,color: Colors.yellow,size: 30,),
      
                        Text('Pending Review',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      
                        Text('0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                      ],
                    ),
                  ),
      
                  
                ),
      
      
                //second card....
      
      
      
                 Card(
                  elevation: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    
                    height: 180,
                    width: 180,
      
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.done,color: Colors.yellow,size: 30,),
      
                        Text('Completed',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      
                        Text('0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                      ],
                    ),
                  ),
      
                  
                ),
      
      
      
              ],
            ),

           // third cards...


           SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                 Card(
                  elevation: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    
                    height: 180,
                    width: 180,
      
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.cases_outlined,color: Colors.yellow,size: 30,),
      
                        Text('Hold',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      
                        Text('0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                      ],
                    ),
                  ),
      
                  
                ),

              ],
            ),


           //final one.....


           Card(
            margin: EdgeInsets.all(50),
            elevation: 15.0,
            child: Container(
              
              color: Colors.white,
              height: 450,
              width: double.infinity,

              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text('Preferential Tasks',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),


                    //datatable.....



                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(20),
                      color: Color.fromARGB(255, 241, 249, 255),
                      child: DataTable(
                        
                        
                        columns:[

                          DataColumn(label: Text('Task Id',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),),

                          DataColumn(label: Text('00683',style: TextStyle(color: Color.fromARGB(255, 6, 72, 126)),)),
                        ] ,
                        
                        
                        
                        
                        
                        
                        
                        
                         rows: [


                          DataRow(
                            cells: [
                              
                              DataCell(Text('Task Name',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),),

                               DataCell(Text('Flutter Learning',style: TextStyle(fontSize: 15),),),]),
                   

                   //second datarow...
                     DataRow(
                       cells: [
                              
                              DataCell(Text('Start Date',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),),

                               DataCell(Text('2022-09-01',style: TextStyle(fontSize: 13),),),]),

                //third datarow....

                  DataRow(
                      cells: [
                              
                              DataCell(Text('End Date',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),),

                               DataCell(Text('2022-09-30',style: TextStyle(fontSize: 13),),),]),


                  //fourthrow.....

                  DataRow(
                      cells: [
                              
                              DataCell(Text('Allocated Efforts',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),),

                              DataCell(Text('120',style: TextStyle(fontSize: 13),),),]),



                  //fifth row......

                  DataRow(
                      cells: [
                              
                              DataCell(Text('Efforts Taken',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),),

                               DataCell(Text('486.0',style: TextStyle(fontSize: 13),),),]),


                  //sixth row.....

                  DataRow(
                      cells: [
                              
                              DataCell(Text('Task Status',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),),

                              DataCell(Text('2022-09-01',style: TextStyle(fontSize: 13),),),]),






                         ],
                         ),
                    ),


                ],
              ),

             


            ),
            
           ),
              
          ],
        ),
      ),


      //drawer menu.....

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

              //fourth listview....

               ListTile(
                onTap: () {

               Navigator.push(context, MaterialPageRoute(builder:(context) =>timesheet(),));

                  
                },
                leading: Icon(Icons.timer_sharp,color: Colors.yellow,),
                title: Text('My Timesheet',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              ),

              //fifth....
               ListTile(
                onTap: () {
                  
                  Navigator.push(context, MaterialPageRoute(builder:(context) =>policies(),));
                },
                leading: Icon(Icons.policy,color: Colors.yellow,),
                title: Text('policies',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              ),

              //six...
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