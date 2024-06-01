import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        //title: Text('login'),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        color: Colors.blue,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('assets/images/logo.png', height: 130,),
            SizedBox(height: 30,),
            TextField(
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).canvasColor,
                  contentPadding: EdgeInsets.all(15),
                hintText: 'Username',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).canvasColor),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Theme.of(context).canvasColor),
                )
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Theme.of(context).canvasColor,
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'Password',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).canvasColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Theme.of(context).canvasColor),
                  )
              ),
            ),
            SizedBox(height: 30,),
            TextButton(
              onPressed: (){},
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).canvasColor,
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    side: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
