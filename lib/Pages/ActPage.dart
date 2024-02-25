import 'package:flutter/material.dart';
import 'package:greenui/Pages/CurrentDate.dart';

class ActPage extends StatefulWidget {
  const ActPage({super.key});

  @override
  State<ActPage> createState() => _ActPageState();
}

class _ActPageState extends State<ActPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:Colors.green,
        
        items: [
           BottomNavigationBarItem(
            label: "home",
            icon:IconButton(onPressed: (){
              Navigator.pushNamed(context, "MainPage");
            }, icon:  const Icon(Icons.home),)
          ),
          BottomNavigationBarItem(
            label: "act",
            icon: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("actPage");
              },
              child:  IconButton(onPressed: (){
              Navigator.pushNamed(context, "MainPage");
            }, icon:  const Icon(Icons.volunteer_activism_outlined))
              
            ),
          ),
           BottomNavigationBarItem(
            label: "community",
            icon:
             IconButton(onPressed: (){
              Navigator.pushNamed(context, "MainPage");
            }, icon:  const Icon(Icons.chat_bubble_rounded))
          ),
        ],
      ),
//app bar
          appBar: AppBar(
        title: const ListTile(
          title: Text(
            "GreenU",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          subtitle: CurrentDateWidget(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: Theme.of(context).appBarTheme.actionsIconTheme!.size),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_outlined, size: Theme.of(context).appBarTheme.actionsIconTheme!.size),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
       
          Container(
            height: 500,
            width: 600,
            decoration: BoxDecoration( color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(12)
),
            child:
            Container(
              child: 
               Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                   Align(
                    alignment: Alignment.center
                    ,child: Text("Act Green",style: TextStyle(color: Colors.green.shade500,fontSize: 30,fontWeight: FontWeight.bold),)),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(height: 350,width: 400,          
                     decoration: BoxDecoration(
                       color: Colors.white,
            borderRadius: BorderRadius.circular(12)
),child: const Padding(
  padding: EdgeInsets.all(10.0),
  child:   Text("Welcome to the heart of action! Here, you can choose your path to make a positive impact. Select from various categories like waste management, energy consumption, and more. Every action, no matter how small, contributes to a greener world. Start your journey to act green today!",style: TextStyle(fontSize: 18),),
),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: MaterialButton(shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)) 
                      ,color: Colors.green.shade500,onPressed: (){
                          Navigator.of(context).pushNamed("actList");
                      },
                    child:  const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Act!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}