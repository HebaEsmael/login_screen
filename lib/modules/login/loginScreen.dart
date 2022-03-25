//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/border_radius.dart';
import '../../shared/components/components.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var userMail = TextEditingController();
  var userPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool defaultObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Theme(
                        data:Theme.of(context).copyWith(
                          colorScheme: ThemeData().colorScheme.copyWith(
                            primary:Colors.teal,
                          ),
                        ),
                        child: DefaultTextFormField(
                          userEnterText: userMail,
                          validateMessage: 'Please Enter Your E-mail',
                          keyboardTypeIsOff: false,
                          fieldText: 'E-mail Address',
                          preFieldIcon: Icons.mail,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Theme(
                        data:Theme.of(context).copyWith(
                          colorScheme: ThemeData().colorScheme.copyWith(
                            primary:Colors.teal,
                          ),
                        ),
                        child: DefaultTextFormField(
                          userEnterText: userPassword,
                          validateMessage: 'Please, Enter Your Password',
                          fieldText: 'Password',
                          preFieldIcon: Icons.lock,
                          isObscureText: defaultObsecure,
                          suffixFieldIcon: MaterialButton(
                            onPressed: (){
                              setState(() {
                                //defaultObsecure ? defaultObsecure = false : defaultObsecure = true;
                                defaultObsecure = !defaultObsecure;
                              });

                            },
                            child: Icon(
                              defaultObsecure ? Icons.visibility : Icons.visibility_off,
                            ),
                          ),

                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      DefualtButton(
                        buttonText: 'login',
                        onPressedFunc: (){
                          if(formKey.currentState!.validate()){
                            print(userMail.text);
                            print(userPassword.text);
                          }
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'Don\'t have an account?'
                          ),
                          Theme(
                            data:Theme.of(context).copyWith(
                              colorScheme: ThemeData().colorScheme.copyWith(
                                primary:Colors.teal,
                              ),
                            ),
                            child: TextButton(
                              onPressed: (){
                                print('Welcome in Register Form');
                              },
                              child: Text(
                                  'Register Now'
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}