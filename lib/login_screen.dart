import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/register_screen.dart';

class LoginScreen extends StatelessWidget {
  var emailcontroller = TextEditingController();
  String s = 'ahmad';

  @override
  Widget build(BuildContext context) {
    emailcontroller.text = s;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Login'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 35),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.padlock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                        ),
                        onPressed: () {},
                      ),
                      labelText: 'Password',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont\'t have account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                        },
                        child: Text('Register now'))
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
