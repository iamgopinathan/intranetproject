import 'package:flutter/material.dart';
import 'package:flutter_application_1/feedback.dart';
import 'package:flutter_application_1/myasset.dart';
import 'package:flutter_application_1/mytimesheet.dart';
import 'package:flutter_application_1/policies.dart';
import 'package:flutter_application_1/vajraloginsite.dart';
import 'data.dart';

class another extends StatefulWidget {
  const another({super.key});

  @override
  State<another> createState() => _paginateState();
}





class _paginateState extends State<another> {

   int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

   bool sort = true;
  List<Data>? filterData;

  //onsort..

  onsortColum(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        filterData!.sort((a, b) => a.taskname!.compareTo(b.taskname!));
      } else {
        filterData!.sort((a, b) => b.taskname!.compareTo(a.taskname!));
      }
    }
  }


  

  

  @override

   void initState() {
    filterData = myData;
    super.initState();
  }


  TextEditingController controller = TextEditingController();








  @override
  Widget build(BuildContext context) {

     var tableRow = new TableRow();

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


              //first container....heading..

              Container(
              
              child: Container(
                margin: EdgeInsets.all(30),
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
                    Text('Let’s see what’s happening with your tasks. !',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  ],
                ),
              ),
            ),

            SizedBox(height:15),



            SingleChildScrollView(
              child: PaginatedDataTable(
              
                    onRowsPerPageChanged: (perPage) {
            
                      setState(() {
            
                        _rowsPerPage = perPage!;
                        
                      });
            
                      
            
            
                    },
                      availableRowsPerPage: [1,2,5,10],
                      rowsPerPage: _rowsPerPage,
            
                        sortColumnIndex: 0,
                        sortAscending: sort,
                        header: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextField(
                            controller: controller,
                            decoration:InputDecoration(
                                hintText: "Search"),
                                onChanged: (value) {
                                setState(() {
                                myData = filterData!
                                    .where((element) =>
                                        element.taskname!.contains(value))
                                    .toList();
                              }
                              );
                            },
                          ),
                        ),
                        source: RowSource(
                          myData: myData,
                          count: myData.length,
                        ),
                        
                        columnSpacing: 70,
                        columns: [
                          DataColumn(
                              label: const Text(
                                "TaskID",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 14),
                              ),
                              onSort: (columnIndex, ascending) {
                                setState(() {
                                  sort = !sort;
                                });
            
                                onsortColum(columnIndex, ascending);
                              }
                              ),
                          const DataColumn(
                            label: Text(
                              "TaskName",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ),
                          const DataColumn(
                            label: Text(
                              "ProjectName",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ),

                          const DataColumn(
                            label: Text(
                              "StartDate",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ),
                          const DataColumn(
                            label: Text(
                              "EndDate",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ),
                          const DataColumn(
                            label: Text(
                              "ActualEfforts",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ),
                          const DataColumn(
                            label: Text(
                              "Effortspent",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ),
                          const DataColumn(
                            label: Text(
                              "Status",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ),
                          const DataColumn(
                            label: Text(
                              "Action",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                     ),
                     ],
                  ),
                  ),
              
          
        


            

            
          

       
          
            
           

      
      //drawer menu....

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

              //second listview...

               ListTile(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>another()));
                },
                leading: Icon(Icons.task,color: Colors.white,),
                title: Text('Task Overview',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              ),

              //third listview...

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

class RowSource extends DataTableSource {
  var myData;
  final count;
  RowSource({
    required this.myData,
    required this.count,
  });

  @override
  DataRow? getRow(int index) {
    if (index < rowCount) {
      return recentFileDataRow(myData![index]);
    } else
      return null;
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => count;

  @override
  int get selectedRowCount => 0;
}

DataRow recentFileDataRow(var data) {
  return DataRow(
    cells: [
      DataCell(Text(data.taskid ?? "Name")),
      DataCell(Text(data.taskname.toString())),
      DataCell(Text(data.projectname.toString())),
      DataCell(Text(data.projectname.toString())),
      DataCell(Text(data.projectname.toString())),
      DataCell(Text(data.projectname.toString())),
      DataCell(Text(data.projectname.toString())),
      DataCell(Text(data.projectname.toString())),
      DataCell(Text(data.projectname.toString())),

    ],
  );
}




         
   

      
        
      


    

    


    

