import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

/*create the main layout of the app*/

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginScreen()
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text("My APP TITLE",style: TextStyle(color: Colors.black,
           fontSize:28.0,
           fontWeight: FontWeight.bold),
           ),
           const Text("Login to your app",
           style: TextStyle(color: Colors.black,
           fontSize: 44.0,
           fontWeight: FontWeight.bold),
           ),//text
           const SizedBox(
            height: 44.0,
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "user email",
                prefixIcon: Icon(Icons.mail,color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "user password",
                prefixIcon: Icon(Icons.lock, color: Colors.black),
              ),
            ),
            const SizedBox(height: 12.0,
            ),
            const Text("Dont remember your password?",
            style: TextStyle(color: Colors.blue),
            ),
            const SizedBox(
              height: 88.0,
            ),
            Container(
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: Color(0xFF0069FE),
                elevation: 0.0,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
                onPressed: (){},
                child:Text("Login"),),
            ),
        ],
      ),
    );
  }
}
