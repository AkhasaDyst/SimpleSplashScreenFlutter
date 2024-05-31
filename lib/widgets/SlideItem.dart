import 'package:flutter/material.dart';
import 'package:slide_pager_flutter/model/Slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    final slide = SlideList[index];
    return Column(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(slide.imageUrl),
                    fit: BoxFit.cover
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              slide.title,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue
              ),
            ),
            SizedBox(height: 10,),
            Text(
              slide.description,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }
}
