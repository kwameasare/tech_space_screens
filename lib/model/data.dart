import 'package:flutter/material.dart';
import 'package:flutterapp/model/blog_model.dart';
import 'package:flutterapp/model/follow_model.dart';
import 'package:flutterapp/model/post_model.dart';
import 'package:flutterapp/model/product_model.dart';

import 'event_model.dart';
import 'forum_model.dart';
import 'group_model.dart';

class AppData {
  static bool qvis = false;

  static List<post_model> postList = [
    post_model(
        id: 1,
        name: 'Your Boss Franklin',
        isliked: false,
        status: 'Hi, this is my first post',
        image: 'p2.jpg',
        residence: 'Ibadan Ngeria',
        category: "Trending Now"),
    post_model(
        id: 2,
        name: 'Kyle Walker',
        isliked: true,
        status:
            'ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg',
        image: 'p2.jpg',
        residence: 'Manhattan New York',
        category: "Trending Now"),
    post_model(
        id: 3,
        name: 'Frank Lampard',
        isliked: false,
        status: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolo',
        image: 'p2.jpg',
        residence: 'Hong Kong China',
        category: "Trending Now"),
    post_model(
        id: 4,
        name: 'Michael Jackson',
        isliked: false,
        status: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        image: 'p2.jpg',
        residence: 'Accra Ghana',
        category: "Trending Now"),
    post_model(
        id: 5,
        name: 'Enock Sanders',
        isliked: true,
        status: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec,  pellentesqu',
        image: 'p2.jpg',
        residence: 'London UK',
        category: "Trending Now"),
  ];

  static List<blog_model> blogList = [
    blog_model(
        id: 1,
        name: 'Your Boss Franklin',
        isliked: false,
        ttl: 'My awesome tech blog title',
        status: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.',
        bgImg: 'pic.jpg',
        image: 'p2.jpg',
        residence: 'Ibadan Ngeria',
        category: "Trending Now"),
    blog_model(
        id: 2,
        name: 'Kyle Walker',
        isliked: true,
        ttl: 'My awesome tech blog title',
        status: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        bgImg: 'chris.jpg',
        image: 'p2.jpg',
        residence: 'Manhattan New York',
        category: "Trending Now"),
    blog_model(
        id: 3,
        name: 'Frank Lampard',
        isliked: false,
        ttl: 'My awesome tech blog titleeeee eeeeee eeeeeee eeeeeeeeee',
        status: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        bgImg: 'pic.jpg',
        image: 'p2.jpg',
        residence: 'Hong Kong China',
        category: "Trending Now"),
    blog_model(
        id: 4,
        name: 'Michael Jackson',
        isliked: false,
        ttl: 'My awesome tech blog title',
        status: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        bgImg: 'chris.jpg',
        image: 'p2.jpg',
        residence: 'Accra Ghana',
        category: "Trending Now"),
    blog_model(
        id: 5,
        name: 'Enock Sanders',
        isliked: true,
        ttl: 'My awesome tech blog title',
        status: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        bgImg: 'pic.jpg',
        image: 'p2.jpg',
        residence: 'London UK',
        category: "Trending Now"),
  ];

  static List<group_model> groupList = [
    group_model(
        id: 1,
        name1: 'Franklin',
        name2: 'Zidane',
        name3: 'Ronaldo',
        name4: 'Elon',
        isliked: false,
        group_name: 'My awesome group name',
        description: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.',
        bgImg: 'pic.jpg',
        image1: 'p2.jpg',
        image2: 'p2.jpg',
        image3: 'p2.jpg',
        image4: 'p2.jpg',
        category: "3d Printing"),
    group_model(
        id: 2,
        name1: 'Franklin',
        name2: 'Zidane',
        name3: 'Ronaldo',
        name4: 'Elon',
        isliked: true,
        group_name: 'My awesome group name',
        description: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        bgImg: 'chris.jpg',
        image1: 'p2.jpg',
        image2: 'p2.jpg',
        image3: 'p2.jpg',
        image4: 'p2.jpg',
        category: "Virtual reality"),
    group_model(
        id: 3,
        name1: 'Franklin',
        name2: 'Zidane',
        name3: 'Ronaldo',
        name4: 'Elon',
        isliked: false,
        group_name: 'My awesome group name',
        description: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        bgImg: 'pic.jpg',
        image1: 'p2.jpg',
        image2: 'p2.jpg',
        image3: 'p2.jpg',
        image4: 'p2.jpg',
        category: "Machine Learning"),
    group_model(
        id: 4,
        name1: 'Franklin',
        name2: 'Zidane',
        name3: 'Ronaldo',
        name4: 'Elon',
        isliked: false,
        group_name: 'My awesome group name',
        description: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        bgImg: 'chris.jpg',
        image1: 'p2.jpg',
        image2: 'p2.jpg',
        image3: 'p2.jpg',
        image4: 'p2.jpg',
        category: "UAVs"),
    group_model(
        id: 5,
        name1: 'Franklin',
        name2: 'Zidane',
        name3: 'Ronaldo',
        name4: 'Elon',
        isliked: true,
        group_name: 'My awesome group name',
        description: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        bgImg: 'chris.jpg',
        image1: 'p2.jpg',
        image2: 'p2.jpg',
        image3: 'p2.jpg',
        image4: 'p2.jpg',
        category: "UAVs"),
  ];

  static List<event_model> eventList = [
    event_model(
        id: 1,
        name: 'Your Boss Franklin',
        isliked: false,
        ttl: 'My awesome tech event title',
        description: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.',
        bgImg: 'pic.jpg',
        rate: 'Free',
        image: 'p2.jpg',
        residence: 'Ibadan Ngeria',
        location: 'Ashaley Botwe School Junction',
        time: "9:00 AM",
        date: "23 Mar, 2020"),
    event_model(
        id: 2,
        name: 'Kyle Walker',
        isliked: true,
        ttl: 'My awesome tech event title',
        location: 'Ashaley Botwe School Junction',
        rate: 'Free',
        description: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        bgImg: 'chris.jpg',
        image: 'p2.jpg',
        residence: 'Manhattan New York',
        time: "9:00 AM",
        date: "23 Mar, 2020"),
    event_model(
        id: 3,
        name: 'Frank Lampard',
        isliked: false,
        ttl: 'My awesome tech event title',
        location: 'Ashaley Botwe School Junction',
        rate: 'Free',
        description: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        bgImg: 'pic.jpg',
        image: 'p2.jpg',
        residence: 'Hong Kong China',
        time: "9:00 AM",
        date: "23 Mar, 2020"),
    event_model(
        id: 4,
        name: 'Michael Jackson',
        isliked: false,
        ttl: 'My awesome tech event title',
        location: 'Ashaley Botwe School Junction',
        rate: 'Free',
        description: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        bgImg: 'chris.jpg',
        image: 'p2.jpg',
        residence: 'Accra Ghana',
        time: "9:00 AM",
        date: "23 Mar, 2020"),
    event_model(
        id: 5,
        name: 'Enock Sanders',
        isliked: true,
        ttl: 'My awesome tech event title',
        location: 'Ashaley Botwe School Junction',
        rate: 'Free',
        description: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        bgImg: 'pic.jpg',
        image: 'p2.jpg',
        residence: 'London UK',
        time: "9:00 AM",
        date: "23 Mar, 2020"),
  ];

  static List<forum_model> forumList = [
    forum_model(
        id: 1,
        name: 'Your Boss Franklin',
        isliked: false,
        body: 'Hi, this is my first thread',
        image: 'p2.jpg',
        ttl: 'My awesome tech thread title',
        residence: 'Ibadan Ngeria',
        category: "Trending Now"),
    forum_model(
        id: 2,
        name: 'Kyle Walker',
        isliked: true,
        body: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        image: 'p2.jpg',
        ttl: 'My awesome tech thread title',
        residence: 'Manhattan New York',
        category: "Trending Now"),
    forum_model(
        id: 3,
        name: 'Frank Lampard',
        isliked: false,
        body: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolo',
        image: 'p2.jpg',
        ttl: 'My awesome tech thread title',
        residence: 'Hong Kong China',
        category: "Trending Now"),
    forum_model(
        id: 4,
        name: 'Michael Jackson',
        isliked: false,
        body: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        image: 'p2.jpg',
        ttl: 'My awesome tech thread title',
        residence: 'Accra Ghana',
        category: "Trending Now"),
    forum_model(
        id: 5,
        name: 'Enock Sanders',
        isliked: true,
        body: 'Lorem ipsum dolor sit amet, consectetuer '
            'adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'
            ' Cum sociis natoque penatibus et magnis dis parturient montes, icies nec, pellentesqu',
        image: 'p2.jpg',
        ttl: 'My awesome tech thread title',
        residence: 'London UK',
        category: "Trending Now"),
  ];

  static List<product_model> productList = [
    product_model(
        id: 1,
        name: 'Your Boss Franklin',
        isliked: false,
        product_name: 'this is my product name',
        image: 'p2.jpg',
        bgImg: 'pic.jpg',
        price: 52,
        condition: 'New',
        residence: 'Ibadan Ngeria',
        category: "Trending Now"),
    product_model(
        id: 2,
        name: 'Kyle Walker',
        isliked: true,
        product_name: 'this is my product name',
        image: 'p2.jpg',
        bgImg: 'pic.jpg',
        price: 52,
        condition: 'Uesd',
        residence: 'Manhattan New York',
        category: "Trending Now"),
    product_model(
        id: 3,
        name: 'Frank Lampard',
        isliked: false,
        product_name: 'this is my product name',
        image: 'p2.jpg',
        condition: 'New',
        bgImg: 'pic.jpg',
        price: 52,
        residence: 'Hong Kong China',
        category: "Trending Now"),
    product_model(
        id: 4,
        name: 'Michael Jackson',
        isliked: false,
        product_name: 'this is my product name',
        image: 'p2.jpg',
        bgImg: 'pic.jpg',
        condition: 'New',
        price: 52,
        residence: 'Accra Ghana',
        category: "Trending Now"),
    product_model(
        id: 5,
        name: 'Enock Sanders',
        isliked: true,
        product_name: 'this is my product name',
        image: 'p2.jpg',
        bgImg: 'pic.jpg',
        condition: 'Used',
        price: 52,
        residence: 'London UK',
        category: "Trending Now"),
    product_model(
        id: 6,
        name: 'Your Boss Franklin',
        isliked: false,
        product_name: 'this is my product name',
        image: 'p2.jpg',
        bgImg: 'pic.jpg',
        price: 52,
        condition: 'New',
        residence: 'Ibadan Ngeria',
        category: "Trending Now"),
    product_model(
        id: 7,
        name: 'Kyle Walker',
        isliked: true,
        product_name: 'this is my product name',
        image: 'p2.jpg',
        bgImg: 'pic.jpg',
        condition: 'New',
        price: 52,
        residence: 'Manhattan New York',
        category: "Trending Now"),
    product_model(
        id: 8,
        name: 'Frank Lampard',
        isliked: false,
        product_name: 'this is my product name',
        image: 'p2.jpg',
        bgImg: 'pic.jpg',
        condition: 'New',
        price: 52,
        residence: 'Hong Kong China',
        category: "Trending Now"),
    product_model(
        id: 9,
        name: 'Michael Jackson',
        isliked: false,
        product_name: 'this is my product name',
        image: 'p2.jpg',
        bgImg: 'pic.jpg',
        condition: 'New',
        price: 52,
        residence: 'Accra Ghana',
        category: "Trending Now"),
    product_model(
        id: 10,
        name: 'Enock Sanders',
        isliked: true,
        product_name: 'this is my product name',
        image: 'p2.jpg',
        bgImg: 'pic.jpg',
        condition: 'New',
        price: 52,
        residence: 'London UK',
        category: "Trending Now"),
  ];

  static List<follow_model> followList = [
    follow_model(
        id: 1,
        name: 'Your Boss Franklin',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Ibadan Ngeria',
        occ: "Graphic Designer"),
    follow_model(
        id: 2,
        name: 'Kyle Walker',
        isliked: true,
        image: 'p2.jpg',
        residence: 'Manhattan New York',
        occ: "AI systems Engineer"),
    follow_model(
        id: 3,
        name: 'Frank Lampard',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Hong Kong China',
        occ: "Systems Analyst"),
    follow_model(
        id: 4,
        name: 'Michael Jackson',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Accra Ghana',
        occ: "Software Engineer"),
    follow_model(
        id: 5,
        name: 'Enock Sanders',
        isliked: true,
        image: 'p2.jpg',
        residence: 'London UK',
        occ: "UX designer"),
    follow_model(
        id: 1,
        name: 'tgfhfhgfhhf',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Ibadan Ngeria',
        occ: "Graphic Designer"),
    follow_model(
        id: 2,
        name: 'fghgfhrt gfhgfh',
        isliked: true,
        image: 'p2.jpg',
        residence: 'Manhattan New York',
        occ: "AI systems Engineer"),
    follow_model(
        id: 3,
        name: 'iuyiuyyu rte',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Hong Kong China',
        occ: "Systems Analyst"),
    follow_model(
        id: 4,
        name: 'terry Jackson',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Accra Ghana',
        occ: "Software Engineer"),
    follow_model(
        id: 5,
        name: 'lkjhkjg Sanders',
        isliked: true,
        image: 'p2.jpg',
        residence: 'London UK',
        occ: "UX designer"),
    follow_model(
        id: 1,
        name: 'jkjhk Franklin',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Ibadan Ngeria',
        occ: "Graphic Designer"),
    follow_model(
        id: 2,
        name: 'agfgd Walker',
        isliked: true,
        image: 'p2.jpg',
        residence: 'Manhattan New York',
        occ: "AI systems Engineer"),
    follow_model(
        id: 3,
        name: 'jhk Lampard',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Hong Kong China',
        occ: "Systems Analyst"),
    follow_model(
        id: 4,
        name: 'pkt Jackson',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Accra Ghana',
        occ: "Software Engineer"),
    follow_model(
        id: 5,
        name: 'itjh Sanders',
        isliked: true,
        image: 'p2.jpg',
        residence: 'London UK',
        occ: "UX designer"),
    follow_model(
        id: 1,
        name: 'bmls Franklin',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Ibadan Ngeria',
        occ: "Graphic Designer"),
    follow_model(
        id: 2,
        name: 'fj Walker',
        isliked: true,
        image: 'p2.jpg',
        residence: 'Manhattan New York',
        occ: "AI systems Engineer"),
    follow_model(
        id: 3,
        name: '/io;ilk Lampard',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Hong Kong China',
        occ: "Systems Analyst"),
    follow_model(
        id: 4,
        name: 'v,kmmn Jackson',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Accra Ghana',
        occ: "Software Engineer"),
    follow_model(
        id: 5,
        name: ',jgk,mn Sanders',
        isliked: true,
        image: 'p2.jpg',
        residence: 'London UK',
        occ: "UX designer"),
    follow_model(
        id: 1,
        name: ',hlikj Franklin',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Ibadan Ngeria',
        occ: "Graphic Designer"),
    follow_model(
        id: 2,
        name: 'm,jk,jnm Walker',
        isliked: true,
        image: 'p2.jpg',
        residence: 'Manhattan New York',
        occ: "AI systems Engineer"),
    follow_model(
        id: 3,
        name: 'klj,jkl, Lampard',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Hong Kong China',
        occ: "Systems Analyst"),
    follow_model(
        id: 4,
        name: 'kljkll Jackson',
        isliked: false,
        image: 'p2.jpg',
        residence: 'Accra Ghana',
        occ: "Software Engineer"),
    follow_model(
        id: 5,
        name: 'kljljk Sanders',
        isliked: true,
        image: 'p2.jpg',
        residence: 'London UK',
        occ: "UX designer"),
  ];

  static List<String> followed = [];
}
