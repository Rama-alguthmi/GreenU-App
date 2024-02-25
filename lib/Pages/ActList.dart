import 'package:flutter/material.dart';
import 'package:greenui/Data/actlistinfo.dart';
import 'package:greenui/Pages/ActCardDetails.dart';
import 'package:greenui/Pages/CurrentDate.dart';

class ActList extends StatefulWidget {
  const ActList({super.key});

  @override
  State<ActList> createState() => _ActListState();
}

class _ActListState extends State<ActList> {
 
 
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
      body: 
    Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(itemCount: actlist.length,gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10,), itemBuilder:(context, index) {
            return   InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                 return ActCardDetails(carddetail: actlist[index],);
                },));
              },
              child: Container(
            decoration: BoxDecoration(color:actlist[index]["color"] as Color,
            borderRadius: BorderRadius.circular(10)
            ),              
                child:  Stack(
                  children: [
                     Positioned(
                            right: 0,
                            top: 3,
                            child:
                           
                          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.white,size: 18,))
                          ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(actlist[index]["title"].toString(),style: const TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                          const SizedBox(height: 5,),
                          const Row(children: [
                            Icon(Icons.favorite,color: Colors.red,),
                            Text("23332",style: TextStyle(color:Colors.white,fontSize: 12),)
                          ],),
                         
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
            
                },),
          ),
        ),
      ],
    )
    );
  }
}