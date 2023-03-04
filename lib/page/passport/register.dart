import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(310.0, 110.0, 0.0, 0.0),
                child: const Text(
                  '.',
                  style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 35.0, left: 20, right: 20),
            child: Column(children: const [
              TextField(
                decoration: InputDecoration(
                    label: Text('Email'),
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    label: Text('Password'),
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    label: Text('Comfirm Password'),
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
                obscureText: true,
              ),
              SizedBox(
                height: 5,
              )
            ]),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 40,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              shadowColor: Colors.greenAccent,
              color: Colors.green,
              elevation: 7.0,
              child: GestureDetector(
                  onTap: () {},
                  child: const Center(
                      child: Text('Register',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat')))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "If you have a account ?",
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
