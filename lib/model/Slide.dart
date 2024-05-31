import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
});
}

final SlideList = [
  Slide(
    imageUrl: 'assets/images/image1.jpg',
    title: 'This is our App',
    description: 'Lorem ipsum solor.',
  ),
  Slide(
    imageUrl: 'assets/images/image2.jpg',
    title: 'This is our Second Page',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tellus quam. Aenean faucibus nunc sed elit luctus rhoncus. Morbi bibendum interdum ligula id tristique. Etiam purus nisl, ornare quis tincidunt ultrices, scelerisque a ipsum. Vestibulum sagittis, ex porta mollis pulvinar, est nunc ultricies nisi, condimentum tincidunt purus nunc ac lorem. Phasellus elementum pharetra leo, a finibus urna faucibus eget. Vivamus ac finibus metus. Ut in rutrum dui, a faucibus mauris. Nam et neque euismod felis malesuada dictum sed ut leo. Nulla nec mi nunc. Nullam porttitor dignissim consectetur.',
  ),
  Slide(
    imageUrl: 'assets/images/image3.jpg',
    title: 'This is our Third Page',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non tellus quam. Aenean faucibus nunc sed elit luctus rhoncus. Morbi bibendum interdum ligula id tristique. Etiam purus nisl, ornare quis tincidunt ultrices, scelerisque a ipsum. Vestibulum sagittis, ex porta mollis pulvinar, est nunc ultricies nisi, condimentum tincidunt purus nunc ac lorem. Phasellus elementum pharetra leo, a finibus urna faucibus eget. Vivamus ac finibus metus. Ut in rutrum dui, a faucibus mauris. Nam et neque euismod felis malesuada dictum sed ut leo. Nulla nec mi nunc. Nullam porttitor dignissim consectetur.',
  )
];