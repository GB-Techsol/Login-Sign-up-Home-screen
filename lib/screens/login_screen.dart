import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.lightGreenAccent,
                Colors.blue,
              ]),
            ),
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 300,
                width: 280,
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formkey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                            decoration: InputDecoration(labelText: 'E-mail'),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value.isEmpty || !value.contains('@')) {
                                return 'invalid email';
                              }
                              return null;
                            }),
                        TextFormField(
                            decoration: InputDecoration(labelText: 'Password'),
                            obscureText: true,
                            validator: (value) {
                              if (value.isEmpty || value.length <= 5) 
                              {
                                return 'invalid password';
                              }
                              return null;
                            },
                            onSaved: (value)
                            {

                            }
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          child: Text(
                            'Login'
                            ),
                            onPressed: ()
                            {
                              Navigator.pushNamed(context, '/1');
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                              ),
                              color: Colors.blue,
                              textColor: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FlatButton(
                          child: Text(
                            'Sign up'
                            ),
                            onPressed: ()
                            {
                              Navigator.pushNamed(context, '/2');
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                              ),
                              color: Colors.blue,
                              textColor: Colors.white,
                        )
                      ],
                  ),
                ),
              ),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
