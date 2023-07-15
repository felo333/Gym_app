import 'package:flutter/material.dart';
import 'package:gym/addnew.dart';
import 'package:gym/templates.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        endDrawer: const MyDrawer(),
        appBar: const MyAppBar(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewForm()));
          },
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/1.jpeg"),
                  ),
                ),
              ],
              ),
            ),const Padding(padding: EdgeInsets.all(20)),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   SizedBox(
                   width: 70,
                   height: 50,
                   child: ElevatedButton(
                       child: const Text("بحث",style: TextStyle(fontSize: 20),) ,
                       onPressed: (){
                         setState(() {
                           table = true;
                         });
                       }
                   ) ,
                 ),const SizedBox(
                   width: 30,
                   ),
                   SizedBox(
                     width: 250,
                     child: TextFormField(
                       textDirection: TextDirection.rtl,
                       keyboardType: TextInputType.number,
                     decoration: const InputDecoration(
                        hintTextDirection: TextDirection.rtl,
                        hintText: "بحث بالرقم",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black
                            )
                        )
              ),
            ),
                   ),const SizedBox(
                     width: 30,
                   ),
                   SizedBox(
                     width: 250,
                     child: TextFormField(
                       textDirection: TextDirection.rtl,
                       keyboardType: TextInputType.number,
                       decoration: const InputDecoration(
                           hintTextDirection: TextDirection.rtl,
                           hintText: "بحث بالاسم",
                           border: OutlineInputBorder(
                               borderSide: BorderSide(
                                   color: Colors.black
                               )
                           )
                       ),
                     ),
                   ),const SizedBox(
                     width: 100,
                   ),
                 ],
               ),
            const Padding(padding: EdgeInsets.all(30)),
            Visibility(
              visible: table,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: DataTable(columns: const [
                          DataColumn(
                            label: Text('الرقم'),
                          ),
                          DataColumn(
                            label: Text('الاسم'),
                          ),
                          DataColumn(
                            label: Text('تاريخ بداية الاشتراك'),
                          ),
                          DataColumn(
                            label: Text('تاريخ نهاية الاشتراك'),
                          ),
                          DataColumn(
                            label: Text('نوع الاشتراك'),
                          ),
                          DataColumn(
                            label: Text('مدة الاشتراك'),
                          ),
                          DataColumn(
                            label: Text('ثمن الاشتراك'),
                          ),
                          DataColumn(
                            label: Text('حالة الاشتراك'),
                          ),

                        ],  rows: const [
                          DataRow(cells: [
                            DataCell(Text('40')),
                            DataCell(Text('فيلوباتير روماني سعد الله')),
                            DataCell(Text('22/6/2023')),
                            DataCell(Text('21/7/2023')),
                            DataCell(Text('حديد فقط')),
                            DataCell(Text('شهر')),
                            DataCell(Text('200')),
                            DataCell(Text('فعال')),


                          ])
                        ]),
                      ),const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),const Padding(padding: EdgeInsets.all(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: (){
                            setState(() {
                              table = false;
                            });
                          },
                          icon: const Icon(Icons.remove_circle,size: 40,color: Colors.red,)),
                      const SizedBox(
                        width: 50,
                      ),
                      SizedBox(
                        height: 60,
                        child: ElevatedButton(
                            child: const Text("تسجيل\nحضور",style: TextStyle(fontSize: 20),) ,
                            onPressed: (){
                              setState(() {
                                table = true;
                              });
                            }
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 60,
                        child: ElevatedButton(
                            child: const Text("   إلغاء\nالاشتراك",style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,) ,
                            onPressed: (){
                              setState(() {
                                table = true;
                              });
                            }
                        ),
                      ), const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 60,
                        child: ElevatedButton(
                            child: const Text("  تجديد\nالاشتراك",style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,) ,
                            onPressed: (){
                              setState(() {
                                table = true;
                              });
                            }
                        ),
                      ),const Padding(padding: EdgeInsets.only(right: 430)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


