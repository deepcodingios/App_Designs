import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'SGD Stock',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 10.0,
            ),
            const CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('images/maha-periyava.png'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Center(
              child: Text(
                'Sign In',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
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

  void setState(Null Function() param0) {}
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  /*

  Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  border: Border.all(color: Colors.white)),
              height: 80.0,
              // width: 300.0,
              // padding: EdgeInsets.all(30.0),
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
// color: Colors.white,
              child: const Center(
                child: Text('Container 1'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  border: Border.all(color: Colors.black)),
              height: 80.0,
              // width: 300.0,
              // padding: EdgeInsets.all(30.0),
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
// color: Colors.white,
              child: const Center(
                child: Text('Container 2'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  border: Border.all(color: Colors.yellow)),
              height: 80.0,
              // width: 300.0,
              // padding: EdgeInsets.all(30.0),
              margin: const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
// color: Colors.white,
              child: const Center(
                child: Text('Container 3'),
              ),
            ),
   */

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

  //SignIn Container
  /*
  children: <Widget>[
            const Center(
              child: Text(
                'Sign In',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                    const Text('Dont have an account?'),
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
  */

  //Verify Email Container

  //Forgot Password Container

  //Create New Password Container

  //Password Changed Successfully Container

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
