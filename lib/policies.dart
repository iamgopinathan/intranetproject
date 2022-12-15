import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/anothertaskpage.dart';
import 'package:flutter_application_1/feedback.dart';
import 'package:flutter_application_1/myasset.dart';
import 'package:flutter_application_1/mytimesheet.dart';
import 'package:flutter_application_1/vajraloginsite.dart';

class policies extends StatefulWidget {
  const policies({super.key});

  @override
  State<policies> createState() => _policiesState();
}



class _policiesState extends State<policies> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = 
    TabController(length: 2, vsync: this);


  

   
    
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


      //body...


          body:  Column(
          children: [
            
      
      
            //another container..
      
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
                    Text('Welcome back, Gopinathan !',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 20,),
                    Text('Please read and accept the Policies. ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  ],
                ),
              ),
            ),


            //tabs container...


           Container(
            margin:EdgeInsets.all(20) ,
             child: TabBar(
              unselectedLabelColor:Colors.black,
              
              controller: _tabcontroller,
              indicator:BoxDecoration(
                
                color: Color.fromARGB(255, 1, 39, 2),
                borderRadius: BorderRadius.circular(12),
              ),
              
              
              tabs: [

                Tab(text: 'Yet To Accept',),
                Tab(text: 'Accepted'),
                


             ],
             ),
           ),


          //tabbbar view....

          Expanded(
            
            child: TabBarView(
              controller: _tabcontroller,
              children: [
            
                //first tabbar view....
            
                SingleChildScrollView(
                   
                   //first policy....
                   
                  child: Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      
                      elevation: 10.0,
                      child: Container(

                       
                         
                        margin: EdgeInsets.all(30),
                        
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Access Control Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                               MyBlinkingButton(),
                             
                            
                              
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/007',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      InkWell(

                                        onTap:() {
                                        
                                        },
                                        
                                        child: Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),))
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),


                    ///second policy...
                    
                    Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Asset Management Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                             

                             MyBlinkingButton(),

                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/008',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),


                  //third policy....


                  Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Backup Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                            
                            MyBlinkingButton(),
                              
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/009',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),



                  //fourth policy..

                   Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Wireless Communication Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),

                             MyBlinkingButton(),
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/010',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),

                  //fifth policy..


                  
                   Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: VPN Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                             

                             MyBlinkingButton(),
                              
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/011',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                  


                  //sixth policy..


                  

                  
                   Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Social Engineering Awareness Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                             

                             MyBlinkingButton(),
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/012',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),

                  //seventh policy..

                  
                   Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Password Protection Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                             
                             MyBlinkingButton(),
                              
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/013',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),

                  //eight policy..


                  
                   Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Physical Security Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                            

                            MyBlinkingButton(),
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/014',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),

                  //ninth policy..


                   Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Teleworking Policy.docx',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                             
                             MyBlinkingButton(),
                              
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/015',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),

                  //tenth policy...


                  

                   Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Network Security Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                            

                            MyBlinkingButton(),
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/016',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),

                  //eleventh policy...

                  
                   Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Password Construction Guidelines.docx',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                             

                             MyBlinkingButton(),
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/017',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),


                  //twelveth policy...

                  
                   Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Mobile-Device-Policy.docx',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                             

                             MyBlinkingButton(),
                              
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/018',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),


                  //thirteen policy..

                  
                   Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Lone-Worker-Policy.docx',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                             

                             MyBlinkingButton(),
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/019',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),

                  //fourteen policy..

                  Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Data protection Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                             

                             MyBlinkingButton(),
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/020',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),


                  //fifteen policy..

                   Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Compliance Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                             

                             MyBlinkingButton(),
                              
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/021',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),


                  //sixteen 

                  

                   Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Clear-Desk-Screen-Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                            

                            MyBlinkingButton(),
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/022',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),


                  //seventeenth policy..


                  Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Bring your own device Policy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                            

                            MyBlinkingButton(),
                            
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/023',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),

                  //eighthenth policy..

                  Container(
                  
                    margin: EdgeInsets.all(20),
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                        

                       
                         
                        margin: EdgeInsets.all(30),
                      
                        width: double.infinity,
                        child: Column(
                          children: [

                            SizedBox(height: 30,),
                            
                            Text('Policy Name: Employee Growth Program',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                             
                             SizedBox(height: 10,),
                             

                             MyBlinkingButton(),
                              SizedBox(height: 60,),
                               
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Id '),
                                      Text('VG/HR/024',style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                               Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Document '),
                                      Text('Doc',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),
                            
                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Policy Date '),
                                      Text('2022-10-03',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),

                                Card(
                                
                                elevation: 15,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Acceptance Time '),
                                      Text('-',  style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                               ),



                               



                               


                               
                            
                          ],
                        ),
                      ),
                    ),
                  ),


                 
                   ],
                    ),
                    ),
                    ),
                  ),
                ),

                


                
            
            
 /////////////////////////////////////////////////////////////////////////////////////////////////////////////           
            
            
//second tabbar view......

          


SingleChildScrollView(
child:Column(

children:[

//firstcontainer.......

               Card(
                
                elevation: 20,
                 child: Container(
                  
                  decoration: BoxDecoration(
                    
                    color: Colors.white,
                    border:Border.all(
                      
                      color:Color.fromARGB(255, 221, 221, 221),
                    ),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  
                  margin:EdgeInsets.all(60),
                  
                  width:double.infinity,
                  child:Column(
                    children: [
               
                      SizedBox(height: 15,),
               
                      Text('Policy Name: Microaggression'
                      ,style:TextStyle(color: Color.fromARGB(255, 1, 22, 1),fontWeight: FontWeight.bold,
                      fontSize:18,)
                      ),
                      SizedBox(height:10),
               
               
                      Container(
               
                        
                        margin: EdgeInsets.all(60),
               
                        width: double.infinity,
                        
                        child: RaisedButton(
                          color:Color.fromARGB(255, 192, 252, 223),
                          
                          onPressed: (){},
                        child: Text('Accepted',style:TextStyle(),),
                        ),
                      ),
               
               
                      Container(
                        
                        color:Color.fromARGB(255, 228, 227, 227),
                        height:200,  
                                             
                        child:Column(
                          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children:[
               
                            Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy Id ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('VG/HR/001',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //second.....card..
               
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy document ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('Doc',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //third...card..
               
                            
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy Date ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('2022-05-16',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //fourth..card..
               
               
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Acceptance Time ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('',style:TextStyle()),
                                ]
                              ),
                            ),               
                          ],
                        )
                      ),


                    
                    ],
                  ),
                 ),
               ),

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
              
              
              ///second section..
             


             
               Card(
                
                elevation: 20,
                 child: Container(
                  
                  decoration: BoxDecoration(
                    
                    color: Colors.white,
                    border:Border.all(
                      
                      color:Color.fromARGB(255, 221, 221, 221),
                    ),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  
                  margin:EdgeInsets.all(60),
                  
                  width:double.infinity,
                  child:Column(
                    children: [
               
                      SizedBox(height: 15,),
               
                      Text('Policy Name: Harassment Policy'
                      ,style:TextStyle(color: Color.fromARGB(255, 1, 22, 1),fontWeight: FontWeight.bold,
                      fontSize:18,)
                      ),
                      SizedBox(height:10),
               
               
                      Container(
               
                        
                        margin: EdgeInsets.all(60),
               
                        width: double.infinity,
                        
                        child: RaisedButton(
                          color:Color.fromARGB(255, 192, 252, 223),
                          
                          onPressed: (){},
                        child: Text('Accepted',style:TextStyle(),),
                        ),
                      ),
               
               
                      Container(
                        
                        color:Color.fromARGB(255, 228, 227, 227),
                        height:200,  
                                             
                        child:Column(
                          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children:[
               
                            Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy Id ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('VG/HR/002',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //second.....card..
               
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy document ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('Doc',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //third...card..
               
                            
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy Date ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('2022-05-16',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //fourth..card..
               
               
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Acceptance Time ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('',style:TextStyle()),
                                ]
                              ),
                            ),               
                          ],
                        )
                      ),


                    
                    ],
                  ),
                 ),
               ),  



              
               //////////////////////////////////////////////////////////////////////////////////////////            
               ////third section.........
               ///
               ///
               ///
               ///




               Card(
                
                elevation: 20,
                 child: Container(
                  
                  decoration: BoxDecoration(
                    
                    color: Colors.white,
                    border:Border.all(
                      
                      color:Color.fromARGB(255, 221, 221, 221),
                    ),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  
                  margin:EdgeInsets.all(60),
                  
                  width:double.infinity,
                  child:Column(
                    children: [
               
                      SizedBox(height: 15,),
               
                      Text('Policy Name: POSH Workflow'
                      ,style:TextStyle(color: Color.fromARGB(255, 1, 22, 1),fontWeight: FontWeight.bold,
                      fontSize:18,)
                      ),
                      SizedBox(height:10),
               
               
                      Container(
               
                        
                        margin: EdgeInsets.all(60),
               
                        width: double.infinity,
                        
                        child: RaisedButton(
                          color:Color.fromARGB(255, 192, 252, 223),
                          
                          onPressed: (){},
                        child: Text('Accepted',style:TextStyle(),),
                        ),
                      ),
               
               
                      Container(
                        
                        color:Color.fromARGB(255, 228, 227, 227),
                        height:200,  
                                             
                        child:Column(
                          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children:[
               
                            Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy Id ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('VG/HR/003',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //second.....card..
               
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy document ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('Doc',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //third...card..
               
                            
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy Date ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('2022-05-16',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //fourth..card..
               
               
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Acceptance Time ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('',style:TextStyle()),
                                ]
                              ),
                            ),               
                          ],
                        )
                      ),


                    
                    ],
                  ),
                 ),
               ),

               //////////////////////////////////////////////////////////////////////
               ///  
               /// 
               /// 

               ///fourth section...
               ///
               ///
               ///
              
               Card(
                
                elevation: 20,
                 child: Container(
                  
                  decoration: BoxDecoration(
                    
                    color: Colors.white,
                    border:Border.all(
                      
                      color:Color.fromARGB(255, 221, 221, 221),
                    ),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  
                  margin:EdgeInsets.all(60),
                  
                  width:double.infinity,
                  child:Column(
                    children: [
               
                      SizedBox(height: 15,),
               
                      Text('Policy Name: POSH Policy'
                      ,style:TextStyle(color: Color.fromARGB(255, 1, 22, 1),fontWeight: FontWeight.bold,
                      fontSize:18,)
                      ),
                      SizedBox(height:10),
               
               
                      Container(
               
                        
                        margin: EdgeInsets.all(60),
               
                        width: double.infinity,
                        
                        child: RaisedButton(
                          color:Color.fromARGB(255, 192, 252, 223),
                          
                          onPressed: (){},
                        child: Text('Accepted',style:TextStyle(),),
                        ),
                      ),
               
               
                      Container(
                        
                        color:Color.fromARGB(255, 228, 227, 227),
                        height:200,  
                                             
                        child:Column(
                          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children:[
               
                            Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy Id ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('VG/HR/004',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //second.....card..
               
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy document ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('Doc',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //third...card..
               
                            
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy Date ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('2022-05-16',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //fourth..card..
               
               
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Acceptance Time ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('',style:TextStyle()),
                                ]
                              ),
                            ),               
                          ],
                        )
                      ),


                    
                    ],
                  ),
                 ),
               ),




               ///fifth section.....
                 

               Card(
                
                elevation: 20,
                 child: Container(
                  
                  decoration: BoxDecoration(
                    
                    color: Colors.white,
                    border:Border.all(
                      
                      color:Color.fromARGB(255, 221, 221, 221),
                    ),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  
                  margin:EdgeInsets.all(60),
                  
                  width:double.infinity,
                  child:Column(
                    children: [
               
                      SizedBox(height: 15,),
               
                      Text('Policy Name: Travel Policy'
                      ,style:TextStyle(color: Color.fromARGB(255, 1, 22, 1),fontWeight: FontWeight.bold,
                      fontSize:18,)
                      ),
                      SizedBox(height:10),
               
               
                      Container(
               
                        
                        margin: EdgeInsets.all(60),
               
                        width: double.infinity,
                        
                        child: RaisedButton(
                          color:Color.fromARGB(255, 192, 252, 223),
                          
                          onPressed: (){},
                        child: Text('Accepted',style:TextStyle(),),
                        ),
                      ),
               
               
                      Container(
                        
                        color:Color.fromARGB(255, 228, 227, 227),
                        height:200,  
                                             
                        child:Column(
                          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children:[
               
                            Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy Id ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('VG/HR/005',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //second.....card..
               
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy document ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('Doc',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //third...card..
               
                            
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy Date ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('2022-05-30',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //fourth..card..
               
               
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Acceptance Time ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('',style:TextStyle()),
                                ]
                              ),
                            ),               
                          ],
                        )
                      ),


                    
                    ],
                  ),
                 ),
               ),


               ///sixth section......
              

                Card(
                
                elevation: 20,
                 child: Container(
                  
                  decoration: BoxDecoration(
                    
                    color: Colors.white,
                    border:Border.all(
                      
                      color:Color.fromARGB(255, 221, 221, 221),
                    ),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  
                  margin:EdgeInsets.all(60),
                  
                  width:double.infinity,
                  child:Column(
                    children: [
               
                      SizedBox(height: 15,),
               
                      Text('Policy Name: Vajra Code of Conduct'
                      ,style:TextStyle(color: Color.fromARGB(255, 1, 22, 1),fontWeight: FontWeight.bold,
                      fontSize:18,)
                      ),
                      SizedBox(height:10),
               
               
                      Container(
               
                        
                        margin: EdgeInsets.all(60),
               
                        width: double.infinity,
                        
                        child: RaisedButton(
                          color:Color.fromARGB(255, 192, 252, 223),
                          
                          onPressed: (){},
                        child: Text('Accepted',style:TextStyle(),),
                        ),
                      ),
               
               
                      Container(
                        
                        color:Color.fromARGB(255, 228, 227, 227),
                        height:200,  
                                             
                        child:Column(
                          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children:[
               
                            Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy Id ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('VG/HR/006',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //second.....card..
               
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy document ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('Doc',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //third...card..
               
                            
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Policy Date ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('2022-07-11',style:TextStyle(fontWeight: FontWeight.bold)),
                                ]
                              ),
                            ),
               
                            //fourth..card..
               
               
                             Card(
                              elevation:10,
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('Acceptance Time ',style:TextStyle(fontWeight: FontWeight.w100),),
                                  ),
                                  Text('',style:TextStyle()),
                                ]
                              ),
                            ),               
                          ],
                        )
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

              //second listview..

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


 class MyBlinkingButton extends StatefulWidget {
    @override
    _MyBlinkingButtonState createState() => _MyBlinkingButtonState();
 }

  class _MyBlinkingButtonState extends State<MyBlinkingButton>
      with SingleTickerProviderStateMixin {
    late AnimationController _animationController;

    @override
    void initState() {
      _animationController =
          new AnimationController(vsync: this, duration: Duration(seconds: 1));
      _animationController.repeat(reverse: true);
      super.initState();
    }

    @override
    Widget build(BuildContext context) {
      return FadeTransition(
        opacity: _animationController,
        child: MaterialButton(
          onPressed: () => null,
          child: Container(
            width:double.infinity,
            child: Center(child: Text("Yet To Accept",style:TextStyle(color: Colors.white)),),),
          color: Colors.red,
        ),
      );
    }

    @override
    void dispose() {
      _animationController.dispose();
      super.dispose();
    }
  }