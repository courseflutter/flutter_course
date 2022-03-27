import 'package:flutter/material.dart';

import 'messenger_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formkey = GlobalKey<FormState>();
  bool scure = true;
  Widget icon = Icon(Icons.visibility_off);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Register'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This must not be empty';
                    }
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Username',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'This must not be empty';
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'email',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This must not be empty';
                    }
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: 'Phone',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This must not be empty';
                    }
                  },
                  obscureText: scure,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: icon,
                        onPressed: () {
                          setState(() {
                            if (scure == true) {
                              scure = false;
                              icon = Icon(Icons.remove_red_eye);
                            } else {
                              scure = true;
                              icon = Icon(Icons.visibility_off);
                            }
                          });
                        },
                      ),
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'password',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => MessngerScreen()));
                    },
                    child: Container(
                        color: Colors.blue,
                        width: double.infinity,
                        height: 50,
                        child: Center(
                            child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white),
                        )))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
