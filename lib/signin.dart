import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // scaffoldMessengerKey: _messangerKey,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logo_1.png',
                  height: 40.0,
                  width: 100.0,
                ),
                Image.asset(
                  'images/logo_2.png',
                  height: 100.0,
                  width: 210.0,
                ),
              ],
            )),
            // const CircleAvatar(
            //   radius: 40.0,
            //   backgroundImage: AssetImage('images/maha-periyava.png'),
            // ),
            const SizedBox(
              height: 20.0,
            ),
            const Center(
              child: Text(
                'Sign In',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontFamily: 'Pacifico',
                    fontSize: 20),
              ),
            ),
            //Email Address TextField
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
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
              margin: const EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Password*',
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
                      const SnackBar(content: Text('You clicked SignIn')));
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: const Text('Sign In'),
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
                    Container(
                      margin: const EdgeInsets.only(
                          left: 10.0, top: 15.0, right: 10.0),
                      child: const Text('Don\'t have an account?'),
                    ),
                    SizedBox(
                      width: 110.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('You clicked SignUp.')));
                        },
                        child: const Text('Sign up'),
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
