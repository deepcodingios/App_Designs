import 'package:flutter/material.dart';
import 'signup.dart';
// import 'package:flutter/services.dart';

void main() {
  runApp(const ForgotPassword());
  // SystemChannels.textInput.invokeMethod('TextInput.hide');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // final _messangerKey = GlobalKey<ScaffoldMessengerState>();

  // This widget is the root of your application.
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
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
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // SizedBox(
                //   height: 5.0,
                // ),
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
                      height: 50.0,
                      width: 210.0,
                    ),
                  ],
                )),
                // const CircleAvatar(
                //   radius: 40.0,
                //   backgroundImage: AssetImage('images/maha-periyava.png'),
                // ),
                const SizedBox(
                  height: 25.0,
                ),
                const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Center(
                  child: Text(
                    'Create account by filling up all the below details',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                //Full Name TextField
                Container(
                  margin:
                      const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Full Name*',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                //Email Address TextField
                Container(
                  margin:
                      const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Email Address*',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                //Password TextField
                Container(
                  margin:
                      const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password*',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                //Confirm Password TextField
                Container(
                  margin:
                      const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password*',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                // T & Cs Label
                Container(
                    margin:
                        const EdgeInsets.only(left: 10.0, top: 0.0, right: 0),
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
                  margin:
                      const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
                  width: 280.0,
                  child: ElevatedButton(
                    // onPressed: () {
                    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    //       content: Text('You clicked ElevatedButton.')));
                    // },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(0, 149, 187, 1),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('You clicked SignUp.')));
                    },
                    child: const Text('Sign up'),
                  ),
                ),
                //Sign In Button
                Container(
                    margin: const EdgeInsets.only(
                        left: 30.0, top: 10.0, right: 30.0),
                    height: 30.0,
                    child: Center(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10.0, top: 8.0, right: 10.0),
                          child: const Text('Already have an account?'),
                        ),
                        SizedBox(
                          width: 110.0,
                          height: 20.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(0, 149, 187, 1),
                            ),
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
            ),
          ),
        ),
      ),
    );
  }
}

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SGD Stock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                ),
                Container(
                  child: Image.asset('images/verifyEmail.png'),
                  width: 300.0,
                  height: 200.0,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Center(
                  child: Text(
                    'Verify your Email',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Center(
                  child: Text(
                    'We\'ve sent a reset password link to your email.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),

                //Sign up Button
                Container(
                  margin:
                      const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
                  width: 280.0,
                  height: 50.0,
                  child: ElevatedButton(
                    // onPressed: () {
                    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    //       content: Text('You clicked ElevatedButton.')));
                    // },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(0, 149, 187, 1),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('You clicked Email Button.')));
                    },
                    child: const Text('Take me to Email'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordChangeConfirmation extends StatefulWidget {
  const PasswordChangeConfirmation({Key? key}) : super(key: key);

  @override
  State<PasswordChangeConfirmation> createState() =>
      _PasswordChangeConfirmationState();
}

class _PasswordChangeConfirmationState
    extends State<PasswordChangeConfirmation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SGD Stock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                ),
                Container(
                  child: Image.asset('images/password_change.png'),
                  width: 300.0,
                  height: 200.0,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Center(
                  child: Text(
                    'Password changed Successfully!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Center(
                  child: Text(
                    'Your password has been changed successfully',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                ),

                //Sign up Button
                Container(
                  margin:
                      const EdgeInsets.only(left: 30.0, top: 0.0, right: 30.0),
                  width: 280.0,
                  height: 50.0,
                  child: ElevatedButton(
                    // onPressed: () {
                    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    //       content: Text('You clicked ElevatedButton.')));
                    // },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(0, 149, 187, 1),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('You clicked Email Button.')));
                    },
                    child: const Text('Sign In'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
            Container(
              child: Image.asset('images/forgot_password.png'),
              width: 200.0,
              height: 200.0,
            ),
            // const CircleAvatar(
            //   radius: 40.0,
            //   backgroundImage: AssetImage('images/maha-periyava.png'),
            // ),
            // const SizedBox(
            //   height: 5.0,
            // ),
            const Center(
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontFamily: 'Pacifico',
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 250.0,
              child: Text(
                'We’ll send a link to your email. Please verify your email to continue',
                style: TextStyle(color: Colors.grey),
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
            SizedBox(
              height: 20.0,
            ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: const Text('Continue'),
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
