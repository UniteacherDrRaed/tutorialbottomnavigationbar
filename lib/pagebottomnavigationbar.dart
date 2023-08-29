

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
            return _mailWidge();
            } else if(state==1
            )
          {
             return _facebookWidge();
          }else{
            return _telegramWidge();
          }
          
        })
      ),
      bottomNavigationBar:
      BlocBuilder<CubitForBottomNavigationBar,int>(
        builder: (context,state)
        {
          return BottomNavigationBar(
        currentIndex: state,
        selectedItemColor: Colors.green,
        backgroundColor: Colors.pink.shade100,
        onTap: ( (value) => context.read<CubitForBottomNavigationBar>().setindex(value)
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  Icon(Icons.mail),
            label: "Mail",
            ),
            BottomNavigationBarItem(
            icon:  Icon(Icons.facebook),
            label: "Facebook",
            ),BottomNavigationBarItem(
            icon:  Icon(Icons.telegram),
            label: "Telegram",
            )
        ]);
        },
        )
       
    );
  }

  Widget _mailWidge()=>Container(
              margin:const EdgeInsets.all(50),
              padding: const EdgeInsets.all(10),
              color: Colors.red,
              height: 100,
              width: 400,
              child:const Column(
                children: [
                  Text("Mail"),
                   Icon(Icons.mail,size: 60,),
                ]
                ),
            );

     Widget _facebookWidge()=>Container(
              margin:const EdgeInsets.all(50),
              padding: const EdgeInsets.all(10),
              color: Colors.blue,
              height: 100,
              width: 400,
              child:const Column(
                children: [
                  Text("Facebook"),
                   Icon(Icons.facebook,size: 50,),
                ]
                ),
            );  
    Widget _telegramWidge()=>Container(
              margin:const EdgeInsets.all(50),
              padding: const EdgeInsets.all(10),
              color: Colors.green,
              height: 100,
              width: 500,
              child:const Column(
                children: [
                  Text("Telegram"),
                   Icon(Icons.telegram,size: 60,),
                ]
                ),
            );           
}

