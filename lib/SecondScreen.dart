import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}
bool selected =false;
class _SecondScreenState extends State<SecondScreen> {

  File? selectedImage;
  String base64Image = "";

  Future<void> chooseImage(type) async {
    // ignore: prefer_typing_uninitialized_variables
    var image;
    if (type == "camera") {
      image = await ImagePicker()
          .pickImage(source: ImageSource.camera, imageQuality: 10);
    } else {
      image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 25);
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        base64Image = base64Encode(selectedImage!.readAsBytesSync());
        // won't have any error now
      });
    }
  }
  DateTime date = DateTime.now();
  void ShowDate() {
    showDatePicker(
        context: (context),
        initialDate: DateTime.now(),
        firstDate: DateTime(1800),
        lastDate: DateTime(2025)).then((value){
          setState(() {
            date = value!;
          });
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    int? val = 1;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 85, left: 38, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FittedBox(
                  child: Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
              const FittedBox(
                  child: Text(
                ""
                    "Create An Account To Get Started",
                style: TextStyle(fontSize: 23, color: Colors.black45),
              )),
              const SizedBox(
                height: 20,
              ),
              const FittedBox(
                  child: Text(
                "Gender",
                style: TextStyle(fontSize: 23, color: Colors.black45),
              )),
              Card(
                child: Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (value) {
                     setState(() {
                       val = value;
                     });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Female"),
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Male"),
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Radio(
                      value: 3,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Other"),
                  ],
                ),
              ),  
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      selected?
                      Text(date.day.toString()+" / " + date.month.toString()+" / " + date.year.toString()):Text("Date of Birth"),
                      IconButton(
                          onPressed: () {
                            selected = true;
                            ShowDate();
                          },
                          icon: const Icon(Icons.date_range))
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      labelText: "Personal PAN Number",

                    //hintTextDirection: TextDirection.rtl,
                  ),
                ),
              ),

             Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    const Text('Personal PAN Photo'),
                    TextButton(onPressed: (){
                      showModalBottomSheet(context: context, builder: ((builder)=> BottomSheet()),);
                       //Navigator.pushReplacement((context), CupertinoPageRoute(builder: (context)=> ImagePickerScreen() ));
                    }, child:const Text("Upload") )
                  ],
                )
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: "Personal Adhaar Number",

                    //hintTextDirection: TextDirection.rtl,
                  ),
                ),
              ),

              Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      const Text('Personal Adhaar Photo'),
                      TextButton(onPressed: (){

                        showModalBottomSheet(context: context, builder: ((builder)=> BottomSheet()),);
                        //Navigator.pushReplacement((context), CupertinoPageRoute(builder: (context)=> ImagePickerScreen() ));

                      }, child:const Text("Upload") )
                    ],
                  )
              ),

           const   SizedBox(height: 40,),
              ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    child: const Center(child: Text('Submit')),
                  )),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        )),
      ),
    );
  }
  Widget BottomSheet(){
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin:  const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Select Image'),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  chooseImage("camera");
                  Navigator.of(context).pop();
                }, child: const Text("Open Camera"),

              ),
              const SizedBox(width: 30,),
              ElevatedButton(
                  onPressed: () async {
                    chooseImage("gallery");
                    Navigator.of(context).pop();
                  },
                  child: const Text("Open Gallery"))
            ],
          )
        ],
      ),
    );

  }
}
