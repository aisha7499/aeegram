import 'package:flutter/material.dart';
import 'package:teegram/wiget/button_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
   bool loading = false;
  TextEditingController emailcontoller = TextEditingController();
  TextEditingController paswordcontoller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  // FirebaseAuth _auth = FirebaseAuth.instance;

  // void login() {
  //   setState(() {
  //     loading = true;
  //   });
  //   _auth
  //       .signInWithEmailAndPassword(
  //           email: emailcontoller.text.toString(),
  //           password: paswordcontoller.text.toString())
  //       .then((value) {
  //     Utils().toastMessage(value.user!.email.toString());
  //     Get.to(() => HomeScreen());
  //     // Navigator.push(
  //     //     context, MaterialPageRoute(builder: (context) => HomeScreen()));
  //     setState(() {
  //       loading = false;
  //     });
  //   }).onError((error, StackTrace) {
  //     debugPrint(error.toString());
  //     Utils().toastMessage(error.toString());
  //     setState(() {
  //       loading = false;
  //     });
  //   });
  // }
  @override
  Widget build(BuildContext context) {
   return 
   Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.amber,
      //   title: Text("Login"),
     // ),
      body: Container(
        color: Colors.purple,
        padding: EdgeInsets.only(bottom: 30,),
        // margin: EdgeInsets.all(40),
        child: Container( padding: EdgeInsets.only(bottom: 40,right: 40,left: 40,top: 80),margin: EdgeInsets.only(bottom: 30), decoration: BoxDecoration( color: Colors.white, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40,),bottomRight: Radius.circular(40))),
          child: Column(
            children: [Container(child: Column(),),
              Image.asset("assets/images/logo.png"),
              Form(
                key: formKey,
                child: Column(
                  children: [ ///name feildddd
                    Container(alignment: Alignment.centerLeft, child: 

                   Text("Name",style: TextStyle(color: Colors.black,fontSize: 18),) ,),
                 
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailcontoller,
                        decoration: InputDecoration(
                         //   hintStyle: TextStyle(color: Colors.amber),
                             hintText: "Name enter",
                           // fillColor: Colors.black38,
                            //  isDense: true,
                            fillColor: Colors.white,
                            filled: true,
                            border: InputBorder.none,
                           // prefixIcon: Icon(Icons.email),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Email";
                          }
                          return null;
                        }),
 SizedBox(
                      height: 20,
                    ),
                         ///email feildddd
                    Container(alignment: Alignment.centerLeft, child:  Text("Email",style: TextStyle(color: Colors.black,fontSize: 18),) ,),
                  
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailcontoller,
                        decoration: InputDecoration(
                         //   hintStyle: TextStyle(color: Colors.amber),
                             hintText: "Email enter",
                           // fillColor: Colors.black38,
                            //  isDense: true,
                            fillColor: Colors.white,
                            filled: true,
                            border: InputBorder.none,
                           // prefixIcon: Icon(Icons.email),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Email";
                          }
                          return null;
                        }),
                    SizedBox(
                      height: 20,
                    ),
                     ///password feildddd
                    Container(alignment: Alignment.centerLeft,child:  Text("Password",style: TextStyle(color: Colors.black,fontSize: 18)) ,),
                   
                    TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        controller: paswordcontoller,
                        obscureText: true,
                        decoration: InputDecoration(
                          //  hintStyle: TextStyle(color: Colors.amber),
                           hintText: "Password enter",
                            fillColor: Colors.white,
                            //  isDense: true,
          
                            filled: true,
                            border: InputBorder.none,
                           // prefixIcon: Icon(Icons.password),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return " enter password";
                          }
                          return null;
                        }),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonWidget(
                text: 'Login',
                loading: loading,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                   // login();
                  }
                },
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text("Don't have an account?"),
              //     TextButton(
              //         onPressed: () {
              //           Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (context) =>HomeScreen()
              //                   // SignupScreen()
              //                    ));
              //         },
              //         child: Text("Sign up"))
                //],
              //)
            ],
            // ),
          ),
        ),
        
           ),
    );
  }
}