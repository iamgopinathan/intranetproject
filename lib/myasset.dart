import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/anothertaskpage.dart';
import 'package:flutter_application_1/feedback.dart';
import 'package:flutter_application_1/mytimesheet.dart';
import 'package:flutter_application_1/policies.dart';
import 'package:http/http.dart'as http;

import 'package:flutter_application_1/vajraloginsite.dart';
import 'package:intl/intl.dart';


class myassets extends StatefulWidget {
  const myassets({super.key});

  @override
  State<myassets> createState() => _myassetsState();
}

class _myassetsState extends State<myassets>with TickerProviderStateMixin {

  TextEditingController _date = TextEditingController();

  final TextEditingController _clear= new TextEditingController();


  String ?valuechoose;

  List listitem = ["Laptop","Keyboard","Mouse","Headphone","Pendrive","Hard-disk"];



  Future showdialog(BuildContext context,String message)async{


    ///show dialog box....

    return showDialog(

      builder: (context) => AlertDialog(
        title: new Text(message),
        actions: [
          Column(
            
            children: [

              Container(
                
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      
                      child: RaisedButton(
                        
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                        color: Color.fromARGB(255, 2, 34, 3),
                        
                    onPressed: (){

                     Navigator.push(context, MaterialPageRoute(builder: (context)=>myassets()));
                    },child: Text('Back',style: TextStyle(color: Colors.white,fontSize: 18,),),),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [
                  Text('My Assets',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              SizedBox(height: 10,),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Asset Type',style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),

              SizedBox(height: 15,),


              DropdownButtonFormField(

                

                
                
                iconEnabledColor: Colors.blue,

               decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),

                    
                  )
                )
               ),
                  
                
                value: valuechoose,
                onChanged: (newValue) {
                setState(() {
                  valuechoose = newValue as String?;
                });
                  
                },
                items:listitem.map((valueItem){

                  return DropdownMenuItem(
                    
                    value: valueItem,
                    
                    child: Text(valueItem),

                    );
                }
                ).toList(),
                ),


                SizedBox(height: 10,),



                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Date of Request',style: TextStyle(fontWeight: FontWeight.bold),),],),



                    SizedBox(height: 15,),


                //date picker....

                TextField(

                  
                  
                      controller: _date,
                      decoration: InputDecoration(
                        
                  

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          
                        ),
                        suffixIcon: Icon(Icons.calendar_today_rounded,color: Colors.blue,),
                      ),

                      onTap: ()async {

                        
                        DateTime? pickeddate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2101));
                     
                         if(pickeddate !=null){
                          setState(() {
                            _date.text = DateFormat('dd-MM-yyyy').format(pickeddate);

                          

                            
                          });
                         }
                      },
                      
                    ),

                    SizedBox(height: 15),

                    Row(
                      children: [
                        Text('Purpose',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),

                    SizedBox(height: 10,),



                    //textfield multiline...


                              TextField(

                                controller: _clear,

                                decoration: InputDecoration(
                                  border: OutlineInputBorder()
                                  
                                ),
                               keyboardType: TextInputType.multiline,
                                maxLines: 3,
                                 ),


               


          
              

                
                SizedBox(height: 10,),
              
                


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                   Container(
                    color: Color.fromARGB(255, 1, 31, 2),
                    child: new RaisedButton(
                   
                    onPressed: null, child: Text('Request',style: TextStyle(color: Colors.white,),))),

                  
                ],
              ),

              SizedBox(height: 10,),

               Container(
                    
                    child: new RaisedButton(
                      color: Color.fromARGB(255, 2, 41, 3),
                    
                    onPressed: (){
                      _clear.clear();

                      _date.clear();

                      listitem.clear();

                      
                    }, child: Text('Reset',style: TextStyle(color: Colors.white,),))),
                
                SizedBox(height: 10,),
             
            ],
          ),
          
        ],
      ), context:context
    );
    }

  ////second alert dialog box.......

  Future showdialogtwo(BuildContext context,String message)async{


    ///show dialog box....

    return showDialog(

      builder: (context) => AlertDialog(
        title: new Text(message),
        actions: [
          Column(
            
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Color.fromARGB(255, 2, 48, 4),
                    onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>myassets()));
                    },child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
                      child: Text('Back',style: TextStyle(
                      color: Colors.white,fontSize: 18,
                      ),),
                    ),
                    ),
                ],
              ),

              SizedBox(height: 30,),


               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Color.fromARGB(255, 2, 48, 4),
                    onPressed: (){

                  //inside another alert box....

                  showdialogthree(context, '');


                  





                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Text('Raise Ticket',style: TextStyle(
                      color: Colors.white,fontSize: 18,
                      ),),
                    ),
                    ),
                ],
              ),

              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Common Ticket Details',
                  style: TextStyle(fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 44, 3),
                  fontSize: 20,
                  ),
                  )
                ],
              ),
              SizedBox(height: 30,),

             
             
            ],
          ),
          
        ],
      ), context:context
    );
  }


  //third alert dialog box.....

 Future showdialogthree(BuildContext context,String message)async{


    ///show dialog box....

    return showDialog(

      builder: (context) => AlertDialog(
        title: new Text(message),
        actions: [
          Column(
            
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Raise Common Ticket',
                  
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),


                  IconButton(
                    
                    splashColor: Colors.white,
                    hoverColor: Colors.white,

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>myassets()));
                      
                    },

                    icon: Icon(Icons.close,size: 30,),
                  ),
                ],
              ),

              SizedBox(height: 25,),


              Row(
                
                
                
                children: [
                  Text('Asset Id',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                ],
              ),
              
              
              SizedBox(height: 10,),              
              
              //textfield..

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(height: 20,),


              Row(
                children: [
                  Text('Issue Date',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ],
              ),

              SizedBox(height: 20,),


              TextField(

                  
                  
                      controller: _date,
                      decoration: InputDecoration(
                        
                  

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          
                        ),
                        suffixIcon: Icon(Icons.calendar_today_rounded,color: Colors.blue,),
                      ),

                      onTap: ()async {

                        
                        DateTime? pickeddate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2101));
                     
                         if(pickeddate !=null){
                          setState(() {
                            _date.text = DateFormat('dd-MM-yyyy').format(pickeddate);

                          

                            
                          });
                         }
                      },
                      
                    ),


                    SizedBox(height: 20,),

                    Row(
                      children: [
                        Text('Issue Description',style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 16,
                        ),)
                      ],
                    ),

                    //textfield...


                    TextField(

                                

                                decoration: InputDecoration(
                                  border: OutlineInputBorder()
                                ),
                               keyboardType: TextInputType.multiline,
                                maxLines: 3,
                              ),

                              SizedBox(height: 20,),



                              Row(
                                mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  Container(
                                  
                                    child: RaisedButton(
                                      color: Colors.grey,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text('Close',style: TextStyle(color: Colors.white),),
                                      ),
                                      onPressed: (() {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>myassets()));

                                      
                                    }),
                                    
                                    ),
                                  ),
                                  //second raised button....

                                  SizedBox(width:10),


                                  Container(
                                    
                                    child: RaisedButton(
                                      
                                      
                                      color: Color.fromARGB(255, 11, 143, 250),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text('Raise Ticket',style: TextStyle(color: Colors.white),),
                                      ),
                                      onPressed: (() {
                                      
                                    }),
                                    
                                    ),
                                  ),
                                ],
                              )


                    


                    


              

             

            
                           

             
             
            ],
          ),
          
        ],
      ), context:context
    );
  }


 





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


      body: Column(
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
                    Text('Welcome back, Gopinathan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 20,),
                    Text('Assets to help you with your work.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  ],
                ),
              ),
            ),

            //tabs .....

             Container(
             margin:EdgeInsets.all(20) ,
             child: TabBar(
              unselectedLabelColor: Colors.black,
              
              controller: _tabcontroller,
              indicator:BoxDecoration(
                
                color: Color.fromARGB(255, 1, 39, 2),
                borderRadius: BorderRadius.circular(12),
              ),
              
              
              tabs: [

                Tab(text: 'My Assets',),
                Tab(text: 'Tickets'),
                


             ],
             ),
           ),


           //tabbarview..


           Expanded(
            child: TabBarView(

              
            
            controller: _tabcontroller,
            children: [


              //first tabbarview.......

              Container(
                height: 200,
                margin:EdgeInsets.all(20),
                child: Card(
                elevation:20,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Color.fromARGB(255, 1, 24, 2),
                              child: Text('Request New Asset',style: TextStyle(color: Colors.white),)),
                          ],
                        ),
                        
                         onPressed: () {

                          showdialog(context,'');



                             

                            


                        
                      },
                      ),


                      Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            
                            child: Text('My Assets',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 1, 43, 3,),fontSize: 20),)),

                          
                        ],

                        
                      ),

                      

                      
                    ],
                  ),
                ),
                  

                ),
              ),

///////////////////////////////////////////////////////////////////////////////////////////////////////////////

          //second tabbar view....

             Container(
              margin: EdgeInsets.all(20),
              child: Card(
                elevation: 10.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                    
                     
                     child: RaisedButton(
                      
                      color: Color.fromARGB(255, 1, 26, 2),
                      onPressed: () {

                        ///dialog box....
                       

                       showdialogtwo(context, '');
                        
                       
                     },
                     
                     child: Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Text('Common Tickets',style: TextStyle(color: Colors.white),),
                     ),
                     ),
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

















