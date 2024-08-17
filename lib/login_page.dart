import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/leading_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController paaswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 800,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/netfliz_banner.jpg'),
                        fit: BoxFit.fitHeight,
                      )),
                    ),
                    // Positioned(
                    //   left: 100,
                    //   right: 100,
                    //   top: 0,
                    //   child: Image.asset('assets/images/full_netflix.png',
                    //       alignment: Alignment.center),
                    // ),
                    Positioned(
                      top: 300,
                      right: 10,
                      left: 10,
                      child: TextField(
                        onChanged: (nameController) {
                          print:
                          ('1st text field $nameController');
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            hintText: 'Email',
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 3),
                              borderRadius: BorderRadius.circular(16),
                            )),
                      ),
                    ),
                    Positioned(
                        top: 400,
                        right: 10,
                        left: 10,
                        child: TextField(
                          onChanged: (paaswordController){
                            print('password text field $paaswordController');
                          },
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.password_sharp),
                                hintText: 'Enter Password',
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 3),
                                  borderRadius: BorderRadius.circular(16),
                                )))),
                    Positioned(
                      top: 470,
                      right: 120,
                      left: 120,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const NetFlixWebApp());
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                          ),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
