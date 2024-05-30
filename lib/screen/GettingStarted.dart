import 'package:flutter/material.dart';

class Gettingstarted extends StatelessWidget {
  const Gettingstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('Hello')
            ],
          ),
          Column(
            children: <Widget>[
              TextButton(
                  onPressed: (){},
                  child: Text('Getting Started'),
              ),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      Text("Have an Account?", style: TextStyle(fontSize: 18),),
                      TextButton(
                          onPressed: (){},
                          child: Text('Login', style: TextStyle(fontSize: 18))),
              ],)
            ],
          ),
        ],
      ),
    );
  }
}
