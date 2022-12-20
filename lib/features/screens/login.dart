import 'package:flutter/material.dart';
import 'package:testing_app/features/screens/home.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  Widget showLogo() {
    return SizedBox(
      width: 100.0,
      height: 100.0,
      child: Image.asset('assets/logos/ldb_logo_w.png'),
    );
  }

  Widget showAppName() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: const Text(
        'LDB Support Customer',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget usernameForm() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: const TextField(
        cursorHeight: 30.0,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.people,
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget passwordForm() {
    return Container(
      height: 80.0,
      margin: const EdgeInsets.all(20.0),
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.key,
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 50.0,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.blue.shade700,
        ),
        onPressed: () {
          MaterialPageRoute materialPageRoute = MaterialPageRoute(
            builder: (BuildContext context) => const HomePage(),
          );
          Navigator.of(context).push(materialPageRoute);
          // ignore: avoid_print
          print('Log In');
        },
        child: const Text(
          'ເຂົ້າສູ່ລະບົບ',
        ),
      ),
    );
    // onPressed: onPressed, child: child
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: const [0.1, 0.5, 0.9],
              colors: [
                Colors.blue.shade800,
                Colors.blue.shade700,
                Colors.blue.shade400,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                showLogo(),
                showAppName(),
                usernameForm(),
                passwordForm(),
                loginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
