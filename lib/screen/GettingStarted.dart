import 'dart:async';
import 'package:flutter/material.dart';
import 'package:slide_pager_flutter/model/Slide.dart';
import 'package:slide_pager_flutter/widgets/SlideItem.dart';

class Gettingstarted extends StatefulWidget {
  Gettingstarted({super.key});

  @override
  State<Gettingstarted> createState() => _GettingstartedState();
}

class _GettingstartedState extends State<Gettingstarted> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer){
      if(_currentPage < 2 ){
        _currentPage++;
      }else{
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  _onPageChanged(int index){
    setState(() {
        _currentPage = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: SlideList.length,
                  itemBuilder: (context, index) {
                    // Ensure SlideItem is properly constructed
                    return SlideItem(index);
                  },
                ),
              ),
              SizedBox(height: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextButton(
                    onPressed: (){},
                    child: Text('Getting Started', style: TextStyle( fontSize: 18),),
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.blue,
                        padding: EdgeInsets.all(15)
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Have an Account?", style: TextStyle(fontSize: 18),),
                      TextButton(
                        onPressed: (){},
                        child: Text('Login', style: TextStyle(fontSize: 18)),
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.blue,
                            padding: EdgeInsets.all(15)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
