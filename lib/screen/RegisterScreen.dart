import 'package:flutter/material.dart';

class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});
  static const routeName = '/register';

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
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.blue,
              width: double.infinity,
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height,
                  ),
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
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).canvasColor,
                            contentPadding: EdgeInsets.all(15),
                            hintText: 'Email',
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
                      SizedBox(height: 20,),
                      TextField(
                        obscureText: true,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).canvasColor,
                            contentPadding: EdgeInsets.all(15),
                            hintText: 'Password Confirmation',
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
                          'Register',
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
              ),
            );
          }
      )

    );
  }
}
