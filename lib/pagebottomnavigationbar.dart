import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorialbottomnavigatiombar/cubitforbottomnavigationbar.dart';

class PageBottomNavigationBar extends StatelessWidget {
  const PageBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("An example of BottomNavigationBar"),
         backgroundColor: Colors.pink,
      ),
      body:BlocBuilder<CubitForBottomNavigationBar,int>(
        builder: ((context, state) {
          if(state==0)
          {
            return _emailWidge();
            } else if(state==1
            )
          {
             return _facebookWidge();
          }else{
            return _telegramWidge();
          }
          
        })
    );
  }

  Widget _emailWidge()=>Container(
              margin:const EdgeInsets.all(50),
              color: Colors.red,
              height: 100,
              width: 100,
              child:const Column(
                children: [
                  Text("Mail"),
                   Icon(Icons.mail),
                ]
                ),
            );

     Widget _facebookWidge()=>Container(
              margin:const EdgeInsets.all(50),
              color: Colors.blue,
              height: 100,
              width: 100,
              child:const Column(
                children: [
                  Text("Facebook"),
                   Icon(Icons.facebook),
                ]
                ),
            );  
    Widget _telegramWidge()=>Container(
              margin:const EdgeInsets.all(50),
              color: Colors.green,
              height: 100,
              width: 100,
              child:const Column(
                children: [
                  Text("Telegram"),
                   Icon(Icons.telegram),
                ]
                ),
            );           
}

