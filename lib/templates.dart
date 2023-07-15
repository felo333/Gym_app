import 'package:flutter/material.dart';
import 'package:gym/main.dart';


Color? mainColor = Colors.red[300];
Color? secondaryColor = Colors.green;
bool table = false;



class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        children:  <Widget>[
         DrawerHeader(
             decoration: BoxDecoration(color: mainColor),
             padding: const EdgeInsets.all(10),
             child: const Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children:<Widget> [
               Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
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
            ],
           ),
          ),
         Directionality(
           textDirection: TextDirection.rtl,
           child: ListTile(
                leading: const Icon(Icons.dashboard,color: Colors.black,),
                title: const Text("الرئيسية",style: TextStyle(fontSize: 19),),
                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()),)
            ),
         ),Directionality(
            textDirection: TextDirection.rtl,
            child: ListTile(
                leading: const Icon(Icons.dashboard,color: Colors.black,),
                title: const Text("قائمة المتدربين",style: TextStyle(fontSize: 19),),
                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()),)
            ),
          ),Directionality(
            textDirection: TextDirection.rtl,
            child: ListTile(
                leading: const Icon(Icons.dashboard,color: Colors.black,),
                title: const Text("قائمة المدربين",style: TextStyle(fontSize: 19),),
                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()),)
            ),
          ),Directionality(
            textDirection: TextDirection.rtl,
            child: ListTile(
                leading: const Icon(Icons.dashboard,color: Colors.black,),
                title: const Text("الاشتراكات",style: TextStyle(fontSize: 19),),
                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()),)
            ),
          ),Directionality(
            textDirection: TextDirection.rtl,
            child: ListTile(
                leading: const Icon(Icons.dashboard,color: Colors.black,),
                title: const Text("الإيرادات",style: TextStyle(fontSize: 19),),
                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()),)
            ),
          ),
        ],
      ) ,
    );

  }
}
class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:  const Text("Strong Gym",style: TextStyle(fontSize: 25,color: Colors.black),
      ),
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(
        color: Colors.black,//change color on your need
      ),
    );
  }
}
