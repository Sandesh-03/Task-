import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

int timeLeftsec = 30;
int timeMinutes = 00;
bool showsuffix = false;

int etimeLeftsec = 30;
int etimeMinutes = 00;
bool ischecked = false;

class _FirstScreenState extends State<FirstScreen> {
  void startCountDown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeftsec > 0) {
        setState(() {
          timeLeftsec--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void EmailTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeftsec > 0) {
        setState(() {
          etimeLeftsec--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
                "Create An Account To Get Started",
                style: TextStyle(fontSize: 23, color: Colors.black45),
              )),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        labelText: "First Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)))
                        //hintTextDirection: TextDirection.rtl,
                        ),
                  ),
                ),
              ),
              Container(
                height: 80,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        labelText: "Last Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)))
                        //hintTextDirection: TextDirection.rtl,
                        ),
                  ),
                ),
              ),
              Container(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(

                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.start,

                    decoration: InputDecoration(
                        suffix: TextButton(
                            onPressed: () {
                              startCountDown();
                            },
                            child: const Text("verify")),
                        labelText: "Mobile Number",
                        border: const OutlineInputBorder(

                            borderRadius: BorderRadius.all(Radius.circular(30)))
                        //hintTextDirection: TextDirection.rtl,
                        ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Resend OTP",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                        )),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 64,
                          child: TextFormField(
                            onChanged: (val) {
                              if (val.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(),
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 64,
                          child: TextFormField(
                            onChanged: (val) {
                              if (val.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(),
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 64,
                          child: TextFormField(
                            onChanged: (val) {
                              if (val.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(),
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 64,
                          child: TextFormField(
                            onChanged: (val) {
                              if (val.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(),
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text("$timeMinutes :" + '$timeLeftsec')),
                  ],
                ),
              ),
              Container(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        suffix: TextButton(
                            onPressed: () {
                              EmailTimer();
                            },
                            child: const Text("verify")),
                        labelText: "Email",
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)))
                        //hintTextDirection: TextDirection.rtl,
                        ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Resend OTP",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                        )),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 64,
                          child: TextFormField(
                            onChanged: (val) {
                              if (val.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(),
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 64,
                          child: TextFormField(
                            onChanged: (val) {
                              if (val.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(),
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 64,
                          child: TextFormField(
                            onChanged: (val) {
                              if (val.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(),
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 64,
                          child: TextFormField(
                            onChanged: (val) {
                              if (val.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(),
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text("$etimeMinutes :" + '$etimeLeftsec')),
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                      value: ischecked,
                      onChanged: (newBool) {
                        setState(() {
                          ischecked = newBool!;
                        });
                      }),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          FittedBox(child: Text("I've read and agreed with the ",style: TextStyle(fontSize: 8),)),
                          FittedBox(
                            child: Text(
                              "terms & conditions,",
                              style: TextStyle(color: Colors.purple,fontSize: 8),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          FittedBox(
                            child: Text("Privacy Poilcy",
                                style: TextStyle(color: Colors.purple,fontSize: 8)),
                          ),
                          FittedBox(child: Text("&",style: TextStyle(fontSize: 8))),
                          FittedBox(
                            child: Text("End User Licrnse Agreement",
                                style: TextStyle(color: Colors.purple,fontSize: 8)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              ElevatedButton(

                  onPressed: () {
                   if ( ischecked == true){
                     Navigator.of(context).pushReplacement(MaterialPageRoute(
                         builder: (context) => const SecondScreen()));
                   }else{
                     showDialog(context: (context), builder: (context)=>AlertDialog(
                       title: const Text('Please check the CheckBox'),
                       actions: [TextButton(onPressed: (){
                         Navigator.of(context).pop();
                       }, child: const Text('Ok'))],
                     ));
                   }
                  },

                  child: Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: const EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width ,
                    child: const Center(child: Text('Register')),
                  )),
              const SizedBox(height: 10,)

            ],
          ),
        )),
      ),
    );
  }
}
