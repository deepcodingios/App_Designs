import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Center(
              child: Text(
                'Create account by filling up all the below details',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.grey),
              ),
            ),
            //Full Name TextField
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Full Name*',
                ),
              ),
            ),
            //Email Address TextField
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Email Address*',
                ),
              ),
            ),
            //Password TextField
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Password*',
                ),
              ),
            ),
            //Confirm Password TextField
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password*',
                ),
              ),
            ),
            // T & Cs Label
            Container(
                margin: const EdgeInsets.only(left: 10.0, top: 0.0, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                      checkColor: Colors.white,
                      // fillColor: Colors.red,
                      value: true,
                      onChanged: (bool? value) {
                        setState(() {
                          var isChecked = value!;
                        });
                      },
                    ),
                    const Text(
                      'I have read and agreed to the Terms & Conditions',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ],
                )),
            //Sign up Button
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
              width: 280.0,
              child: ElevatedButton(
                // onPressed: () {
                //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                //       content: Text('You clicked ElevatedButton.')));
                // },
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('You clicked SignUp.')));
                },
                child: const Text('Sign up'),
              ),
            ),
            //Sign In Button
            Container(
                margin:
                    const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
                height: 40.0,
                child: Center(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text('Already have an account?'),
                    SizedBox(
                      width: 110.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('You clicked SignUp.')));
                        },
                        child: const Text('Sign in'),
                      ),
                    ),
                  ],
                ))),
          ],
        )),
      ),
    );
  }
}

//SignUp Container
/*
  children: <Widget>[
            const Center(
              child: Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Center(
              child: Text(
                'Create account by filling up all the below details',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.grey),
              ),
            ),
            //Full Name TextField
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Full Name*',
                ),
              ),
            ),
            //Email Address TextField
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Email Address*',
                ),
              ),
            ),
            //Password TextField
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Password*',
                ),
              ),
            ),
            //Confirm Password TextField
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password*',
                ),
              ),
            ),
            // T & Cs Label
            Container(
                margin: const EdgeInsets.only(left: 10.0, top: 0.0, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                      checkColor: Colors.white,
                      // fillColor: Colors.red,
                      value: true,
                      onChanged: (bool? value) {
                        setState(() {
                          var isChecked = value!;
                        });
                      },
                    ),
                    const Text(
                      'I have read and agreed to the Terms & Conditions',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ],
                )),
            //Sign up Button
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
              width: 280.0,
              child: ElevatedButton(
                // onPressed: () {
                //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                //       content: Text('You clicked ElevatedButton.')));
                // },
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('You clicked SignUp.')));
                },
                child: const Text('Sign up'),
              ),
            ),
            //Sign In Button
            Container(
                margin:
                    const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
                height: 40.0,
                child: Center(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text('Already have an account?'),
                    SizedBox(
                      width: 110.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('You clicked SignUp.')));
                        },
                        child: const Text('Sign in'),
                      ),
                    ),
                  ],
                ))),
          ],
  */
