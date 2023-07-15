import 'package:flutter/material.dart';
import 'package:gym/main.dart';
import 'package:gym/templates.dart';

class AddNewForm extends StatefulWidget {
  const AddNewForm({super.key});

  @override
  State<AddNewForm> createState() => _AddNewFormState();
}

class _AddNewFormState extends State<AddNewForm> {
  final _formKey = GlobalKey<FormState>();
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(),
        endDrawer: const MyDrawer(),
        body: Column(
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 100)),
                    SizedBox(
                      width: 400 ,
                      child: TextFormField(
                        textDirection: TextDirection.rtl ,
                        decoration: const InputDecoration(
                          hintTextDirection: TextDirection.rtl,
                            hintText: "الاسم",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black
                                )
                            )
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 7)),
                    SizedBox(
                      width: 400 ,
                      child: TextFormField(
                        textDirection: TextDirection.rtl ,
                        decoration: const InputDecoration(
                            hintTextDirection: TextDirection.rtl,
                            hintText: "رقم التليفون",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black
                                )
                            )
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 7)),
                    SizedBox(
                      width: 400 ,
                      child: TextFormField(
                        textDirection: TextDirection.rtl ,
                        decoration: const InputDecoration(
                            hintTextDirection: TextDirection.rtl,
                            hintText: "السن",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black
                                )
                            )
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Radio(
                          toggleable: true,
                            value: "أنثى",
                            groupValue: gender,
                            onChanged: (value) {
                            setState(() {
                              gender = value ;
                              print(gender);
                            });
                        }),
                        const Text('أنثى'),
                        const Padding(padding: EdgeInsets.all(8)),
                        Radio(
                          toggleable: true,
                            value: "ذكر",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value ;
                                print(gender);
                              });
                          }),
                        const Text('ذكر'),
                        const Padding(padding: EdgeInsets.all(50)),
                        const Text("النوع",style: TextStyle(fontSize: 18),),
                        const Padding(padding: EdgeInsets.only(right: 590)),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Radio(
                            toggleable: true,
                            value: "لا",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value ;
                                print(gender);
                              });
                            }),
                        const Text('لا'),
                        const Padding(padding: EdgeInsets.all(15)),
                        Radio(
                            toggleable: true,
                            value: "نعم",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value ;
                                print(gender);
                              });
                            }),
                        const Text('نعم'),
                        const Padding(padding: EdgeInsets.all(12)),
                        const Text("أول مرة تنزل جيم؟",style: TextStyle(fontSize: 18),),
                        const Padding(padding: EdgeInsets.only(right: 590)),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 70)),
                    ElevatedButton(
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Text('تسجيل', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyApp()));
                      },
                    ),
                  ],
                ),
            ),
          ],
        ),
    );
  }
}
