import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text(
                'Log in',
                style: TextStyle(
                  fontSize: 40.0 ,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                 onFieldSubmitted: (Email)
                 {
                   print(Email);
                 },
                onChanged: (Email)
                {
                  print(Email);
                },
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(
                  Icons.email,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (Email)
                {
                  print(Email);
                },
                onChanged: (Email)
                {
                  print(Email);
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.black,

                child: MaterialButton(
                  onPressed: ()
                  {
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  Text(
                    "Don't have an account",
                    style: TextStyle(
                      fontSize: 13.5,
                      color: Colors.black45,
                    ),
                  ),
                  TextButton(onPressed: (){},
                      child: Text(
                        'New Account',
                      ),
                  ),
                ],
              ),
            ],


          ),
        ),
      ),
    );
  }
}
